var langStr = 'ch';
var ueNewPrice = "$59.95";
var ueUpgradePrice = "$29.95";
var ueUcBundleNewPrice = "$89.95";      //new bundle cost
var ueUcBundleRetailPrice = "$109.95";   //bundle retail price
var ueUCBundleYouSavePercentage = "40% on UC";
var ueUpgradeToUeUcBundlePrice = "$59.95";
var strReminderText = 'ʣ������:';

var strTopRightBlockContent = 
    '<p class="register_title">ע��</p>'+ 
    '<p><img src="images/uebox_sm.gif" alt="UltraEdit" border="0" class="uebox" />ע���ֻ��: <span class="price" id="ueNewPrice">$59.95</span></p>'+ 
    '<a href="#" onClick="purchaseLink(\'BuyUE\', langStr); return false;" target="_blank"><p class="buy_button">����</p></a>'+ 
    '<p class="upgrade_text">����: <span class="price" id="ueUpgradePrice">$29.95</span></p>'+ 
    '<a href="#" onClick="purchaseLink(\'UpgradeUE\', langStr); return false;" target="_blank"><p class="upgrade_button">����</p></a>';
                  
var strBottomRightBlockContent = 
    '<p class="register_title">UE/UC </p>'+ 
    '<p><img src="images/ue_uc_box.gif" alt="UltraEdit UltraCompare Bundle" border="0" class="bundlebox" />����ע���ֻ��: <span class="price" id="ueUcBundleNewPrice">$89.95</span></p>'+ 
    '<a href="#" onClick="purchaseLink(\'BuyUEUCBundle\', langStr); return false;" target="_blank"><p class="buy_button">����</p></a>'+
    '<p class="save_on_uc_text">Save 40% on UC!</p> ';

var strHeaderSubText= 
    '<h2>�����û��ע�������� </h2>'+
    '<p>�����������ð汾��ʹ���������� </p>';
    
var strUpgradeReminderHeaderSubText = 
'<h2>��������������ѹ�</h2> ' +
    '<p>�����������ɻ������һ������������ͬʱ��ʡ50 ��</p>';

var strStdTopHeadline = 'UltraEdit ���ð汾��ʾ';
var strHurryTopHeadline = '�������ð汾�Ѿ�������...';
var strExpiredTopHeadline = '��!�������ð汾�Ѿ�������';
var strUpgradeReminderTopHeadline = '��Ȩ��������';

                          
// ----- DIALOG CONTENT ---------//     
var defaultContent =
		'<h2>лл������ UltraEdit</h2>'+
		'<p class="subtext">�����������ð汾��ʹ����������</p>'+
		'<p>�����û��ע������������������ʹ�����������빺����Ȩ�� </p>'+
		'<p><a href="#" onClick="openLink(\'http://www.ultraedit.com/redirects/registration/ch/ue_register.html\'); return false;" target="_blank">��������ע�� UltraEdit</a></p>'+
		'<p style="clear: all"><b>Visa, MasterCard, Amex accepted</b></p>'+
		'<p>���뷽�����������Ƽ����޹�˾(IDM �й�)<br />�����к�������������·50��Ժ<br />H���ش���B1��606��, �ʱ� 100048<br />����: 86-10-68413628<br />����: <a href="mailto:sales@ultraedit.cn" target="_blank">sales@ultraedit.cn</a></p>'+
		'<p><a href="#" onClick="openLink(\'http://www.ultraedit.com/company/contact_us.html\'); return false;" target="_blank">��������⣬�����������</a> </p>';


var welcomeContent =
		'<h2>лл������ UltraEdit</h2>'+
		'<p>���� IDM �û�������Դ����������������� - ����֧�֡����ء����ŵ�...</p>'+
		'<div class="powertips">'+
		'<p><span class="resource_title">������ʾ/�̳�</span><br />'+
		'"How-tos" �Ǹ����°汾�Ĺ��ܣ������й��ܵ�����̡̳�</p>'+
		'</div>'+
		'<div class="tech_support">'+
		'<p><span class="resource_title">����֧��</span><br />'+
		'������?  �д�!  �������ļ�����Դ�� IDM ���Ϊ������</p>'+
		'</div>'+
		'<div class="forums">'+
		'<p><span class="resource_title">�û����û���̳</span><br />'+
		'�μ���̳�� IDM ��Ʒ�İ����߷��� - �����ɣ��õ�����ȡ�</p>'+
		'</div>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/resources.html\'); return false;" target="_blank">������Դ����</a></p>';


var benefitsContent =
    '<h2>ע�˲�ĺô�</h2>'+ 
    '<div class="benefits">'+ 
    '<p><span class="subtext">Ϊ���������� - ����֧��</span><br />'+ 
    '���缶�ļ���֧�� - ��׼��Ӧʱ��: 30 ���ӻ���١�</p>'+ 
    '<p><span class="subtext">һ���������</span><br />'+ 
    'ע��������һ���������������Ҫ�ʹ�Ҫ�İ汾��</p>'+ 
    '<p><span class="subtext">�����ô�</span><br />'+ 
    '�����������û����ḻ������Դ��������ʾ���û���������ģʽ���¿�����̳�� </p>'+ 
    '</div> <!-- end benefits -->';


var findAndReplaceContent =
		'<img src="images/find_dialog.gif" alt="Find Dialog" border="0" class="tip_screenshot" />'+
		'<h2>Ѱ��/�滻</h2>'+
		'<p class="subtext">���ǿ��Ĺ�������Ѱ��/�滻��һ���ļ������֣�����ļ���</p>'+
		'<p>��Ѱ�Ҳ˵��д�ȡѰ��/�滻�������ȼ� - CTRL+F ����Ѱ�ң�CTRL+R �����滻���������������ļ��Ĺ��ܵ�Ѱ��/�滻��������������Ŀ¼��Ѱ��/�滻��</p>'+
		'<p>���и߼���Ѱ��/�滻ѡ�����������ʽ���ļ�Ѱ��/�滻����Ѱ�ҵȡ� </p>'+
		'<p class="powertip_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/find_replace.html\'); return false;" target="_blank">���������˽����</a></p>';


var projectsContent =
		'<img src="images/projects_dialog.gif" alt="Projects" border="0" class="tip_screenshot" />'+
		'<h2>��Ŀ</h2>'+
		'<p class="subtext">��Ϻ͹�������Ŀ������ļ���Ŀ¼��</p>'+
		'<p>ΪʲôҪ����Ŀ? �������ǿ�����������������ļ���ע�� "to-dos" ������Ŀ����һ������ķ�����Ϻ͹��������ļ���</p>'+
		'<p>���У���Ŀ������� UltraEdit �Ŀ���ϣ���ִ��һ�㹤�������� - ������Ŀ�ļ�����ȡ�������������˽���ν�����Ŀ���������/ɾ����Ŀ�ļ���!</p>'+
		'<p class="powertip_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/group_files_and_folders_with_projects.html\'); return false;" target="_blank">���������˽����</a></p>';


var diffFilesAndFoldersContent =
		'<img src="images/uc_dialog.gif" alt="Compare files and folders" border="0" class="tip_screenshot" />'+
		'<h2>�ֱ��ļ�/Ŀ¼</h2>'+
		'<p class="subtext">���� UltraCompare���Ƚ��ļ���Ŀ¼�Ǽ������׵��£�</p>'+
		'<p>UltraEdit �� UltraCompare Lite һ�����ǿ������򵥵ķֱ�������Ƚ��ļ���Ŀ¼��ʶ��ֱ�</p>'+
		'<p>���ǣ������������ UltraCompare Professional������������һ�������Ĺ��ܼ���UltraCompare Professional ���� 2;���� 3;���Ƚϡ��ϲ��ֱ𡢴���浵�Ƚϡ���ۡ�����ѡ��Ի������ļ��Ƚϵ�</p>'+
		'<p class="powertip_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/compare_files_folders.html\'); return false;" target="_blank">���������˽����</a></p>';


var columnModeContent =
		'<img src="images/column_mode_icon.gif" alt="Column Mode" border="0" class="tip_screenshot" />'+
		'<h2>Column Mode</h2>'+
		'<p class="subtext">��ģʽ... UltraEdit ����һ�����Ĺ���! '+
		'<p>Column Mode changes the way you select text in the editor allowing you to select columns and rows of text as opposed to only selecting rows. </p>'+
		'<p>������ģʽ?  ֻ����Ҫ���� ALT+C ���ں�����ת����ģʽ (��ӹ�����/�˵�) �ʹ�ֱ��/ˮƽ��ѡȡ���֡� </p>'+
		'<p>��ģʽ����������ʽ������ ��/�Ҷ��롢�������֡����е�... </p>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/column_mode.html\'); return false;" target="_blank">���������˽����</a></p>';



var bookmarksContent =
		'<img src="images/bookmarks_icon.gif" alt="Bookmarks" border="0" class="tip_screenshot" />'+
		'<h2>��ǩ</h2>'+
		'<p class="subtext">���ñ�ǩ�����Ĺ�������...</p>'+
		'<p style="clear: both">��ǩ��һ������ķ��������桱�ļ��ͱ�����Ҫ��λ�á��������Ҫ����ǩ���� CTRL + F2��������һ����ǩ���� F2��������һ����ǩ���� ALT + F2��</p>'+
		'<p>�������ñ�ǩ���������ټ��ӣ��͵��������ڻ�Ծ�ļ��ڵı�ǩ�� �������д򿪵��ļ��ı�ǩ��</p>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/bookmarks.html\'); return false;" target="_blank">�����������</a></p>';


var addWordfileContent =
		'<img src="images/add_wordfile_icon.gif" alt="Add a Wordfile" border="0" class="tip_screenshot" />'+
		'<h2>����һ�����ļ�</h2>'+
		'<p class="subtext">������һ�����ļ��������������Ե��﷨ͻ��</p>'+
		'<p>UltraEdit ֧�� 12 ���ԣ����������Ը������ļ������ӻ�ɾ�����ԡ�</p>'+
		'<p>���� UltraEdit ���﷨ͻ���ǿ������õ� (�������ļ�) �����Դ����ǵ���վ�ϵ��ڶ����ļ���Ϊ�������������﷨ͻ��֧�֡�</p>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/add_a_wordfile.html\'); return false;" target="_blank">���������˽����</a></p>';


var htmlPreviewContent =
		'<img src="images/browser_preview_icon.gif" alt="HTML Preview" border="0" class="tip_screenshot" />'+
		'<h2>HTML Ԥ��</h2>'+
		'<p class="subtext">�����ۺ������Ԥ��������� HTML</p>'+
		'<p>ʲô�����ñ༭ HTML ������?  �����ȡ HTML Ԥ����������ڱ��� html�����Ǿ�����Ҫ��...</p>'+
		'<p>�򵥵ر༭ html �ļ�������Ҫ�Ĺ�������Ӽ��Ӳ˵���ת���������Ԥ��������������Ԥ�����ĸĶ���ת�������Ԥ������״̬... ������!</p> '+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/integrated_html_preview.html\'); return false;" target="_blank">���������˽����</a></p>';


var environmentsContent =
		'<img src="images/environment_icon.gif" alt="Environments" border="0" class="tip_screenshot" />'+
		'<h2>����</h2>'+
		'<p class="subtext">���� TaskMatch ����ת������S</p>'+
		'<p>ʲô�ǻ���? �����������������ٵ�ת���༭���棬�Ա������Ը���������Ҫת���˵��������������ղصĴ�������ģ��ȡ�</p>'+
		'<p>������һ���ǳ��õĹ��ܣ���Ϊ���ǿ�������ת������/ѡ�����ֻ�ǵ���������һ��һ�����á� ��ϲ��Ĭ�ϻ���? û�����⣬�������Լ���������һ��!</p>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/environments.html\'); return false;" target="_blank">���������˽����</a></p>';


var cssStyleBuilderContent =
		'<img src="images/style_builder.gif" alt="CSS style builder" border="0" class="tip_screenshot" />'+
		'<h2>CSS ���ͽ�����</h2>'+
		'<p class="subtext">���� CSS ���ͽ����߿��ٺ����׵ؽ���������ʽ��</p>'+
		'<p>CSS ���ͽ����߿��Խ�������������/���ֺ��ƶ�/��λ������һ���ü�ֵ��Ȼ�� ��ȷ���������ǲ����Ծ�ļ�!</p>'+
		'<p>���� CSS ���ͽ����ߣ��ڹ������Ĺ��߰������ͽ����ߡ���</p>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/css_style_builder.html\'); return false;" target="_blank">���������˽����</a></p>';


var diffFilesAndFoldersContent =
		'<img src="images/uc_dialog.gif" alt="Compare files and folders" border="0" class="tip_screenshot" />'+
		'<h2>�ֱ��ļ�/Ŀ¼</h2>'+
		'<p class="subtext">���� UltraCompare���Ƚ��ļ���Ŀ¼�Ǽ������׵��£�</p>'+
		'<p>UltraEdit �� UltraCompare Lite һ�����ǿ������򵥵ķֱ�������Ƚ��ļ���Ŀ¼��ʶ��ֱ�</p>'+
		'<p>���ǣ������������ UltraCompare Professional������������һ�������Ĺ��ܼ���UltraCompare Professional ���� 2;���� 3;���Ƚϡ��ϲ��ֱ𡢴���浵�Ƚϡ���ۡ�����ѡ��Ի������ļ��Ƚϵ�</p>'+
		'<p class="powertip_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/compare_files_folders.html\'); return false;" target="_blank">���������˽����</a></p>';


var mergeDifferencesContent =
		'<img src="images/uc_merge_icon.gif" alt="Merge files and folders" border="0" class="tip_screenshot" />'+
		'<h2>�ϲ����</h2>'+
		'<p class="subtext">���� UltraCompare Professional ͬ���ļ��Ĳ��</p>'+
		'<p>UltraCompare Pro ����֧����·����·�Ƚϣ��������֧�ֺϲ����!</p>'+
		'<p>UltraCompare Professional ��һ���ϲ���ѡ������������ļ���Ŀ¼�Ĳ��һ����Ϳ��Ժϲ����</p>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultracompare/block_line_mode_merge.html\'); return false;" target="_blank">���������˽����</a></p>';


var findAndReplaceInFilesContent =
		'<img src="images/replace_in_files_icon.gif" alt="Replace in Files" border="0" class="tip_screenshot" />'+
		'<h2>�ļ���Ѱ��/�滻</h2>'+
		'<p class="subtext">������Ŀ¼�ṹ������Ѱ��/�滻...</p>'+
		'<p>���ļ�ѡ����ļ�/�滻��Ѱ�ң���������Ѱ�Ҳ˵����ҵ�����Щǿ���Ѱ��ѡ��������һ��Ŀ¼���ڲ�ͬ�ļ�Ѱ���ִ������֡�</p>'+
		'<p>�����ļ����ļ�/�滻��Ѱ�ң�������Ѱ��/�滻��Ѱ����Ŀ¼����Ŀ/ϲ���ļ���ָ���ļ����͡����Ե���Ŀ¼���Ƶȡ� </p>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/find_replace.html\'); return false;" target="_blank">���������˽����</a></p>';


var sortContent =
		'<img src="images/sort_icon.gif" alt="Sort" border="0" class="tip_screenshot" />'+
		'<h2>������������</h2>'+
		'<p class="subtext">���Ƿ�֪�������԰��ı�����������?</p>'+
		'<p>UltraEdit �����������������������Ķ��ʹ���! ������԰������Ķ���¼�ļ��������ļ����Ͽ�����ɾ���ظ�����Ŀ/�С�</p>'+
		'<p>ǿ������������������ڼ��� ���������У������ļ����ϡ������Ը��ݻ�����߼�ѡ������ ���������˽��������</p>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/advanced_column_based_sort.html\'); return false;" target="_blank">���������˽����</a></p>';


var linkLocalAndRemoteContent =
		'<img src="images/link_local_remote.gif" alt="Link Your Local and Remote Directories" border="0" class="tip_screenshot" />'+
		'<h2>���ӱ���/Զ��Ŀ¼</h2>'+
		'<p class="subtext">������Ŀ�� FTP/SFTP ����һ��Ŀ¼�������ֳ�/Զ��Ŀ¼!</p>'+
		'<p>��Ŀ�Ǻ����ã���Ϊ������������֯�;ۺ������ļ���Ŀ¼��   </p>'+
		'<p>����Ŀ����������֯�;ۺ��ļ���Ŀ¼��������������׵�ִ��һ�㹤�������������� FTP/SFTP ��������������Ŀ���������������ӱ���/Զ��Ŀ¼ - �����ء����غ�ͬ���������Ѵ���֮��!</p>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/sync_local_to_remote.html\'); return false;" target="_blank">���������˽���ࡣ</a></p>';


var ftpSftpContent =
		'<img src="images/ftp_dialog.gif" alt="FTP Browser" border="0" class="tip_screenshot" />'+
		'<h2>FTP/SFTP ֧��</h2>'+
		'<p class="subtext">���� FTP/SFTP ��Զ�˷������ϴ�ȡ�ļ� &amp; Ŀ¼��</p>'+
		'<p>������������ UltraEdit ��������������ֱ༭������Ҫ FTP/SFTP��</p>'+
		'<p>װ������ FTP ���ں��������� FTP/SFTP ���ͱ���ѡ��� FTP �����</p>'+
		'<p>����Ҫ�Ƚ�ʲô�ļ�/Ŀ¼�ڷ������ϸı䡣û�����⣬ֻ������ UC Pro ������ FTP/SFTP �Ƚϡ�</p>'+
		'<p class="powertip_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/configure_ftp.html\'); return false;" target="_blank">���������˽����</a></p>';


var scriptingContent =
		'<img src="images/scripting_icon.gif" alt="Scripting" border="0" class="tip_screenshot" />'+
		'<h2>�ű�</h2>'+
		'<p class="subtext">���������... ���ýű��Զ������Ĺ�����</p>'+
		'<p>�ű���� JavaScript ������Ժ� UltraEdit �༭������ǿ���������������һ����̬�ķ����Զ������Ĺ����� ���Ƿ����˽����ű�?  ˵�����ṩ���нű���ָ������ԡ�</p>'+
		'<p>�ڱ�д�ű����ڽű��˵�����ű��б���������˽����ű� �������µ������˽� UltraEdit �Ľű�����Ļ����� </p>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/scripting_engine_tutorial.html\'); return false;" target="_blank">���������˽����</a></p>';


var templatesContent =
		'<img src="images/templates.gif" alt="templates" border="0" class="tip_screenshot" />'+
		'<h2>ģ��</h2>'+
		'<p class="subtext">�����ͱ��泣���õ�ģ�����֡�</p>'+
		'<p>���������Զ���ģ��Ͳ��뾭���õı�����ʱ��ȵ������ļ���</p>'+
		'<p>�����Դ���ֻ�������ֵļ�ģ�壬������԰���ģ�嶯̬���������ڡ�ʱ�䡢�ļ����Ƶȣ� </p>'+
		'<p>���������Ƚ��˵�����/�޸�����ģ�塣  </p>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/custom_templates.html\'); return false;" target="_blank">���������˽����</a></p>';


var encryptDecryptContent =
		'<img src="images/encrypt.gif" alt="SSH/Telnet" border="0" class="tip_screenshot" />'+
		'<h2>����/���������ļ�</h2>'+
		'<p class="subtext">�������ü��ܱ�������/ר���ĵ����ϡ�</p>'+
		'<p>UltraEdit �����ü��ܹ����ṩ��һ�����ٺ����׵ķ���������/���������������� - ��������ȫ���������������ϡ� ��һ���ļ����ܣ��ڵ����˵���ѡ�����ѡ��Ϳ�������</p>'+
		'<p>���У�UltraEdit ��� UltraSentry ���԰Ѽ��ܺ��ԭ���ļ�ɾ����UltraEdit ���õļ��ܺ�UltraSentry �İ�ȫɾ���ṩ��һ�����յķ��������������е����ϡ�</p>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/encrypt_decrypt_text_files.html\'); return false;" target="_blank">���������˽����</a></p>';


var sshTelnetContent =
		'<img src="images/telnet.gif" alt="SSH/Telnet" border="0" class="tip_screenshot" />'+
		'<h2>SSH/Telnet</h2>'+
		'<p class="subtext">ִ������Telnet/SSH �����е��ж�!</p>'+
		'<p style="clear: both">UltraEdit �ṩһ������� SSH/Telnet ����̨��������ȡ��������ִ���������ж��������Բ��뿪�༭����ִ����ж���</p>'+
		'<p>Telnet/SSH ����̨������һ���ڱ༭��Ĺ̶��� (docked) ���򸡶� (undocked) ����</p>			'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/ssh_telnet.html\'); return false;" target="_blank">���������˽����</a></p>';


var searchFavoritesContent =
		'<img src="images/search_favorites.gif" alt="Search favorites" border="0" class="tip_screenshot" />'+
		'<h2>����ϲ��</h2>'+
		'<p class="subtext">���Ƿ񾭳�ʹ��ͬһ���������滻���ִ�... ���������������Ҫ����ϲ����</p>'+
		'<p>�������滻ϲ���������������澭���õ��������滻�ִ���"�༭ �������滻ϲ��" �Ի�����һ������ķ��������������滻ϲ����</p>'+
		'<p>����һ��ϲ�����򵥵ش��������滻�Ի��򣬵�������ͼ���ѡ�� "�ӵ�ϲ��" ѡ��Ժ���������/�滻�ִ���������Ҫ��ʱ�����!</p>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/search_replace_favorites.html\'); return false;" target="_blank">���������˽����</a></p>';


var macroContent =
		'<img src="images/macro_icon.gif" alt="Macro" border="0" class="tip_screenshot" />'+
		'<h2>Macros</h2>'+
		'<p class="subtext">��α�дǿ��� Macro</p>'+
		'<p>ʲô�� Macro?  Macros ����Ҫ����������¼һϵ�е�ָ��ͼ�����Ȼ��������š� </p>'+
		'<p style="clear: both">�����Լ����Ա�д Macros�������׵ķ������� UltraEdit Ϊ���������� UltraEdit ��һ��ǿ�����Ǽ�¼�������Ͳ��� Macros�� </p>'+
		'<p>��¼һ�� Macro�������� Macro �˵��Ŀ��ټ�¼/��¼ ָ�   </p>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/writing_a_powerful_macro.html\'); return false;" target="_blank">���������˽����</a></p>';


var spellCheckerContent =
		'<img src="images/spell_check.gif" alt="Check your spelling" border="0" class="tip_screenshot" />'+
		'<h2>ƴд�����</h2>'+
		'<p class="subtext">����ƴ����?  </p>'+
		'<p>UltraEdit ���� 100,000 �����ʵ�ƴд�������֧�ֵ����ְ���Ӣ���������Ӣ�Ӣ�������������������������������������������������ȡ�</p>'+
		'<p>�������ڱ༭�˵��¿���ƴд���������������ѡ�����ֻ���ƪ (���û���ı�ѡ).</p>'+
		'<p>�������ڱ�д��ʱ������ʵʱ��ƴ�ֹ��ܡ� </p>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/spell_check.html\'); return false;" target="_blank">���������˽����</a></p>';


var keyboardShortcutContent =
		'<img src="images/key_mapping.gif" alt="Keyboard Shortcuts" border="0" class="tip_screenshot" />'+
		'<h2>���̽ݾ�</h2>'+
		'<p class="subtext">�������̽ݾ�����������󻯡�</p>'+
		'<p>�����õ�ʱ�����ᷢ�֣����� UltraEdit �Ķ������ǿ��Զ��������õġ�UltraEdit ���Ϊ��ȫ����������Ϊ��������ճ��ı��༭��������Ҫ��</p>'+
		'<p>��ס��UltraEdit �����ı�/Ťš�˵����ż��ͼ��任���Ա��ʺ�����Ҫ��</p>'+
		'<p class="resource_link"><a href="#" onClick="openLink(\'http://www.ultraedit.com/support/tutorials_power_tips/ultraedit/keymapping.html\'); return false;" target="_blank">���������˽����</a></p>';


// ----- END DIALOG CONTENT ---------//

// ---- START RIGHT/LEFT CONTENT ----//

var rightSideContent =
    '<img src="images/ue_uc_box_big.gif" alt="UltraEdit UltraCompare Bundle Box" border="0" class="ue_uc_box_big" />'+ 
		'<h2>UE/UC Bundle</h2>'+ 
		'<p class="ue_uc_bundle_offer">���ۼ�: <span class="retail_price" id="ueUcBundleRetailPrice">$109.95</span><br />'+ 
			'���ļ۸�: <span class="price" id="ueUcBundleNewPrice">$89.95</span><br />'+ 
			'�����ۿ�: <span class="you_save" id="ueUCBundleYouSavePercentage">##</span>'+ 
		'</p>'+ 
    '<p style="clear: both">UltraEdit/UltraCompare ��һ����ȫ�ۺϵ������ı��༭������ ���� UE/UC ������ʡ UC �� 40%!</p>'+     
	  '<div class="register_upgrade_container">'+ 
	  '<div class="best_value">��ü۸�</div>' +
	  	'<div class="register">'+ 
				'<p class="register_text">����ע�� <span class="price" id="ueUcBundleNewPrice">$89.95</span></p>'+ 
				'<a href="#" onClick="purchaseLink(\'BuyUEUCBundle\', langStr); return false;" target="_blank"><p class="buy_button">����</p></a>'+ 
			'</div>'+ 
			'<div class="upgrade">'+ 
				'<p class="register_text">UE ���� + UC <span class="price" id="ueUpgradeToUeUcBundlePrice">$59.95</span></p>'+ 
				'<a href="#" onClick="purchaseLink(\'UpgradeUE2UEUCBundle\', langStr); return false;" target="_blank"><p class="buy_button">����</p></a>'+ 
		'</div>';

var leftSideContent =
    '<img src="images/uebox_big.gif" alt="UltraEdit Box" border="0" class="uebox_big" />'+ 
    '<h2>UltraEdit</h2>'+ 
    '<p>������һ��������ǿ���ﳬ��ֵ���ı��༭��</p>'+
		'<div class="bonus" style="clear: both">'+       
	    '<p><span class="subtext">һ���������</span><br />'+ 
	    'ע��������һ���������������Ҫ�ʹ�Ҫ�İ汾��</p>'+ 
    '</div>'+ 
    '<div class="register_upgrade_container">'+ 
    '<div class="register">'+ 
    '<p class="register_text">ע�� <span class="price" id="ueNewPrice">$59.95</span></p>'+ 
    '<a href="#" onClick="purchaseLink(\'BuyUE\', langStr); return false;" target="_blank"><p class="buy_button">����</p></a>'+ 
    '</div>'+ 
    '<div class="upgrade">'+ 
    '<p class="register_text">UE ����<span class="price" id="ueUpgradePrice">$29.95</span></p>'+ 
    '<a href="#" onClick="purchaseLink(\'UpgradeUE\', langStr); return false;" target="_blank"><p class="buy_button">����</p></a>'+ 
    '</div>';


// ---- END RIGHT/LEFT CONTENT ----//





// ---- START RIGHT/LEFT UPGRADE CONTENT ----//

var upgradeRightSideContent =
    '<img src="images/ue_uc_box_big.gif" alt="UltraEdit UltraCompare Bundle Box" border="0" class="ue_uc_box_big" />'+ 
		'<h2>UE/UC Bundle</h2>'+ 
		'<p class="ue_uc_bundle_offer">����: <span class="retail_price" id="ueUcBundleRetailPrice">$109.95</span><br />'+ 
			'������: <span class="price" id="ueUpgradeToUeUcBundlePrice">$59.95</span><br />'+ 
			'����ʡ: <span class="you_save" id="ueUCBundleYouSavePercentage">##</span>'+ 
		'</p>'+ 
		'<p style="clear: both">����������ͬʱ�ӹ�UltraCompare�������ֿ���Ϊ����ʡ40%����������һ������ʡ50 ������������ʡ40 ����UltraCompare ������һ�������������ֲ�Ʒ��</p>'+ 
	  '<div class="register_upgrade_container">'+ 
			'<div class="register" style="height: 70px; background-image: url(images/best_value_arrow.gif); background-position: 100% 50%; background-repeat: no-repeat;">'+ 
				'<p style="padding-top: 23px; padding-left: 23px; font-weight: bold">��Ѽ�ֵ</p>'+ 
			'</div>'+ 
			'<div class="upgrade">'+ 
				'<p class="register_text">UE ���� + UC <span class="price" id="ueUpgradeToUeUcBundlePrice">$59.95</span></p>'+ 
				'<a href="#" onClick="purchaseLink(\'UpgradeUE2UEUCBundle\', langStr); return false;" target="_blank"><p class="buy_button">����</p></a>'+ 
		'</div>';

var upgradeLeftSideContent =
    '<img src="images/uebox_big.gif" alt="UltraEdit Box" border="0" class="uebox_big" />'+ 
    '<h2>UltraEdit</h2>'+ 
    '<p>���˽�UltraEdit���µĹ��ܣ�  <a href="#" onClick="openLink(\'http://www.ultraedit.com/products/ultraedit/new_feature_tour.html\'); return false;" target="_blank">See </a> what\'s new and improved since your last upgrade.</p>'+ 
    '<div class="bonus_upgrade" style="clear: both">'+ 
      '<p><span class="subtext">��������... 1���������</span><br />'+ 
      '���������°汾�����һ��� <b>��ѵ�</b> ��������������Ҫ/��Ҫ�ķ���</p>'+ 
    '</div>'+ 
    '<div class="register_upgrade_container">'+ 
    '<div class="register">'+ 
	    '<p style="text-align: left; padding-top: 4px; padding-left: 5px"><strong>��������</strong><br>'+ 
	    'ע���û��յ�50 ����ѵ� <br>���ۼۣ�</p>'+ 
    '</div>'+ 
    '<div class="upgrade">'+ 
    '<p class="register_text">UE ����<span class="price" id="ueUpgradePrice">$29.95</span></p>'+ 
    '<a href="#" onClick="purchaseLink(\'UpgradeUE\', langStr); return false;" target="_blank"><p class="buy_button">����</p></a>'+ 
    '</div>';


// ---- END RIGHT/LEFT UPGRADE CONTENT ----//

