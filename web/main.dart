// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:markdown/markdown.dart' show markdownToHtml;


void main() {
  initFromMarkDown();
}


void initFromMarkDown() {
  var content = new ParagraphElement();

  querySelector("#body").children.add(content);
  HttpRequest.getString("jleahred.md")
      .then((text) => content.appendHtml(markdownToHtml(text)));
}
