## Licensed to Cloudera, Inc. under one
## or more contributor license agreements.  See the NOTICE file
## distributed with this work for additional information
## regarding copyright ownership.  Cloudera, Inc. licenses this file
## to you under the Apache License, Version 2.0 (the
## "License"); you may not use this file except in compliance
## with the License.  You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.

<%!
import sys

from desktop.views import commonheader_m, commonfooter_m, _ko
from desktop import conf

if sys.version_info[0] > 2:
  from django.utils.translation import gettext as _
else:
  from django.utils.translation import ugettext as _
%>

<%namespace name="common_search" file="common_search.mako" />
<%namespace name="notebookKoComponents" file="/common_notebook_ko_components.mako" />

${ commonheader_m(_('Dashboard'), "dashboard", user, request, "80px") | n,unicode }

${ notebookKoComponents.downloadSnippetResults() }


<div id="searchComponents" class="dashboard-container">
${ common_search.page_structure(is_mobile=True) }
</div>

${ commonfooter_m(request, messages) | n,unicode }
