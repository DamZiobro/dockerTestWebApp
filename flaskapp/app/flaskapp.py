#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2017 damian <damian@damian-laptop>
#
# Distributed under terms of the MIT license.

from flask import Flask
flaskApp = Flask(__name__)

@flaskApp.route("/")
def helloFlaskWorld():
    return "Hello Flask World!"

if __name__ == "__main__":    
    flaskApp.run(debug=True, host="0.0.0.0")
    

