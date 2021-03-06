// Licensed to Cloudera, Inc. under one
// or more contributor license agreements.  See the NOTICE file
// distributed with this work for additional information
// regarding copyright ownership.  Cloudera, Inc. licenses this file
// to you under the Apache License, Version 2.0 (the
// "License"); you may not use this file except in compliance
// with the License.  You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

const getStyleFromCSSClass = (cssClass: string): CSSStyleDeclaration | CSSRule | undefined => {
  for (let i = 0; i < document.styleSheets.length; i++) {
    const cssClasses = document.styleSheets[i].rules || document.styleSheets[i].cssRules;
    for (let x = 0; x < cssClasses.length; x++) {
      if ((<CSSStyleRule>cssClasses[x]).selectorText === cssClass) {
        return (<CSSStyleRule>cssClasses[x]).style
          ? (<CSSStyleRule>cssClasses[x]).style
          : <CSSStyleRule>cssClasses[x];
      }
    }
  }
};

export default getStyleFromCSSClass;
