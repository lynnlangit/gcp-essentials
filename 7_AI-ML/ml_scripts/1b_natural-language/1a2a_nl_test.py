import os
import re

from sentiment_analysis import analyze

RESOURCES = os.path.join(os.path.dirname(__file__), 'resources')

def test_pos(capsys):
    analyze(os.path.join(RESOURCES, 'pos.txt'))
    out, err = capsys.readouterr()
    score = float(re.search('score of (.+?) with', out).group(1))
    magnitude = float(re.search('magnitude of (.+?)', out).group(1))
    assert score * magnitude > 0


def test_neg(capsys):
    analyze(os.path.join(RESOURCES, 'neg.txt'))
    out, err = capsys.readouterr()
    score = float(re.search('score of (.+?) with', out).group(1))
    magnitude = float(re.search('magnitude of (.+?)', out).group(1))
    assert score * magnitude < 0


def test_mixed(capsys):
    analyze(os.path.join(RESOURCES, 'mixed.txt'))
    out, err = capsys.readouterr()
    score = float(re.search('score of (.+?) with', out).group(1))
    assert score <= 0.3
    assert score >= -0.3


def test_neutral(capsys):
    analyze(os.path.join(RESOURCES, 'neutral.txt'))
    out, err = capsys.readouterr()
    magnitude = float(re.search('magnitude of (.+?)', out).group(1))
    assert magnitude <= 2.0