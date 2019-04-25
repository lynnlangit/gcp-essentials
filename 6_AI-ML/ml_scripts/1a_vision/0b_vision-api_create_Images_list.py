#!/usr/bin/env python
# from - https://cloud.google.com/vision/docs/using-python
# about - https://cloud.google.com/vision/docs/supported-files

'''This script generates request JSON for the Vision API

  `python generatejson.py -i <input_file> -o <output_file.json>`

    - input file contains information on how to process a set of URIs, 
    - output is a JSON request file

    Ex. input file below ea. detection with max of 10 results / annotation.
    - face(1) and label detection(4) annotations for image1 
    - landmark(2) and logo detection(3) annotations for image2 
    `filepath_to_image1.jpg 1:10 4:10
     filepath_to_image2.png 2:10 3:10`
'''

import argparse
import base64
import json
import sys


def main(input_file, output_filename):
    """Translates the input file into a json output file.
    Args:
        input_file: a file object, containing lines of input to convert.
        output_filename: the name of the file to output the json to.
    """
    request_list = []
    for line in input_file:
       
        image_filename, features = line.lstrip().split(' ', 1)
        with open(image_filename, 'rb') as image_file:
            content_json_obj = {
                'content': base64.b64encode(image_file.read()).decode('UTF-8')
            }

        feature_json_obj = []
        for word in features.split(' '):
            feature, max_results = word.split(':', 1)
            feature_json_obj.append({
                'type': get_detection_type(feature),
                'maxResults': int(max_results),
            })

        request_list.append({
            'features': feature_json_obj,
            'image': content_json_obj,
        })

    with open(output_filename, 'w') as output_file:
        json.dump({'requests': request_list}, output_file)


DETECTION_TYPES = [
    'TYPE_UNSPECIFIED',
    'FACE_DETECTION',
    'LANDMARK_DETECTION',
    'LOGO_DETECTION',
    'LABEL_DETECTION',
    'TEXT_DETECTION',
    'SAFE_SEARCH_DETECTION',
]

def get_detection_type(detect_num):
    """Return the Vision API symbol corresponding to the given number."""
    detect_num = int(detect_num)
    if 0 < detect_num < len(DETECTION_TYPES):
        return DETECTION_TYPES[detect_num]
    else:
        return DETECTION_TYPES[0]


FILE_FORMAT_DESCRIPTION = '''
Each line in the input file must be of the form:
    file_path feature:max_results feature:max_results ....
where 'file_path' is the path to the image file you'd like
to annotate, 'feature' is a number from 1 to %s,
corresponding to the feature to detect, and max_results is a
number specifying the maximum number of those features to
detect.
The valid values - and their corresponding meanings - for
'feature' are:
    %s
'''.strip() % (
    len(DETECTION_TYPES) - 1,
    # The numbered list of detection types
    '\n    '.join(
        # Don't present the 0th detection type ('UNSPECIFIED') as an option.
        '%s: %s' % (i + 1, detection_type)
        for i, detection_type in enumerate(DETECTION_TYPES[1:])))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        formatter_class=argparse.RawTextHelpFormatter
    )
    parser.add_argument(
        '-i', dest='input_file', required=True,
        help='The input file to convert to json.\n' + FILE_FORMAT_DESCRIPTION)
    parser.add_argument(
        '-o', dest='output_file', required=True,
        help='The name of the json file to output to.')
    args = parser.parse_args()
    try:
        with open(args.input_file, 'r') as input_file:
            main(input_file, args.output_file)
    except ValueError as e:
        sys.exit('Invalid input file format.\n' + FILE_FORMAT_DESCRIPTION)
