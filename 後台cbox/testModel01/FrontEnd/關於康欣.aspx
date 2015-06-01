<%@ Page Title="關於康欣" Language="C#" MasterPageFile="~/FrontEnd/Site.Master" AutoEventWireup="true" CodeBehind="關於康欣.aspx.cs" Inherits="testModel01.WebForm3" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContent" runat="server">

    <div class="container">
        <h3>康欣 - 關於康欣</h3>
        <hr style="background-color: blue; height: 1px" />
    </div>
    <div class="container">
        <h4>關於我們</h4>
        <table border="0" style="text-align: left; width: 98%; color: rgb(51, 51, 51); font-family: 新細明體, Verdana, Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: 1px; line-height: normal; orphans: initial; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            <tr style="padding: 0px; margin: 0px;">
                <td colspan="2" style="padding: 0px; margin: 0px; width: 100%"></td>
            </tr>
            <tr style="padding: 0px; margin: 0px;">
                <td colspan="2" style="padding: 0px; margin: 0px; width: 100%">
                    <div id="text" style="font-size: 10.5pt; font-family: 微軟正黑體, 新細明體, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; color: rgb(49, 49, 49); word-spacing: 1px; margin: 0px; padding: 0px; text-align: left;">
                        <p>
                            <span class="auto-style1">康欣養護中心</span>於90年6月30日立案49床，位於溪北街開業逾十年，因典寶溪上游河道過於狹窄，加上又位處低漥地區，大雨一來就宣洩不及，年年飽受淹水及緊急撤離院民之苦。故邱院長斥資上億元，打造4層樓高之長期照護家園，將原有<span class="auto-style1">康欣養護中心</span>遷移至本棟建築之一樓，二樓至四樓將籌設護理之家。
                        </p>
                        <p>
                            將提供之服務內容有：護理服務、生活照顧、就醫服務、營養服務、復健服務、靈性照顧、入住適應輔導、活動安排、志工關懷…等之服務特色，服務內容詳述如下：
                        </p>
                        <p>
                        </p>
                        <ol>
                            <li><span class="auto-style2">護理服務</span>：將聘任4位護理人員提供護理服務，本機構實施主護護理制度，每位住民有其主責之護理人員，給予身體、心理、社會之全面評估，擬定照護計畫及定期評值修正照護計畫。</li>
                            <li><span class="auto-style2">生活照顧</span>：將聘任7位照顧服務員，提供二十四小時貼心之生活照顧，照料住民日常生活起居。</li>
                            <li><span class="auto-style2">就醫服務</span>：與合格救護運輸公司簽訂合約，住民可方便就醫；並與醫院簽訂合約，提供門診、住院等就醫需求之轉診服務。</li>
                            <li><span class="auto-style2">營養服務</span>：聘任營養師針對住民體位、健康狀況、個別喜好進行營養評估，每月追蹤體重及異常營養指標，定期追蹤並修正營養照護計畫，提供符合住民個別需求的治療飲食及供應多樣化之快樂餐。</li>
                            <li><span class="auto-style2"><strong>復健服務</strong></span>：<span class="auto-style3">與合約醫院合作聘任之復健科醫師，定期評估住民日常生活技巧、功能性活動、輔具需求，執行復健治療項目，以提供有需求之住民復健服務，增進住民自我照顧之能力，可重返社區。</span></li>
                            <li><span class="auto-style2">靈性照顧</span>：尊重個人信仰，容許住民床旁擺設宗教信仰之物品；特設立獨立之宗教室，提供住民宗教崇拜活動，並與宗教團體合作定期關懷住民。</li>
                            <li><span class="auto-style2">入住適應輔導</span>：由護理人員及社工協助新入住住民適應機構環境、常規及人員之認識，給予心理情緒之輔導，預防住民遷移壓力症候群之發生。</li>
                            <li><span class="auto-style2">活動安排</span>：由社工設計及帶領，定期舉辦團體、個別性及社區活動，如：慶生會、節慶慶祝活動及各類團康活動等，豐富住民生活內容。</li>
                            <li><span class="auto-style2">志工關懷</span>：結合社區資源，開發個人及團體志工，定期關懷住民生活，讓住民期待社區好友造訪。</li>
                        </ol>
                        <p class="auto-style4">
                            康欣養護中心邱美玲院長以營造快樂的老人家園為宗旨，十幾年來已照顧上千名長輩，相信以院長的服務理念延伸至護理之家，加上專業且堅強的工作團隊必能將本機構成為優質之機構。
                        </p>
                    </div>
                </td>
            </tr>
        </table>
        <hr />
    </div>
    <div class="container">
        <h4>位置圖</h4>
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
        <style type="text/css">
            #user_gmap {
                width: 1100px;
                height: 400px;
                margin: 20px auto 0px;
                border: solid 1px #111;
            }

            #user_glink {
                width: 1100px;
                text-align: right;
                font-size: 10px;
                font-weight: normal;
                padding: 0px;
                height: 20px;
                margin: 0px auto;
            }
            .auto-style1 {
                color: rgb(0, 0, 204);
            }
            .auto-style2 {
                color: rgb(153, 0, 255);
            }
            .auto-style3 {
                color: rgb(153, 0, 0);
            }
            .auto-style4 {
                color: rgb(255, 0, 0);
            }
        </style>
        <script type="text/javascript">
            google.maps.event.addDomListener(window, 'load', function () {
                var mapdiv = document.getElementById('user_gmap');
                var myOptions = {
                    zoom: 15,
                    center: new google.maps.LatLng(22.7885764, 120.3434107),
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    scaleControl: true
                };
                var map = new google.maps.Map(mapdiv, myOptions);
                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(22.7885764, 120.3434107),
                    map: map,
                    title: '康欣老人長期照顧中心(養護型)'
                });
                var infowindow = new google.maps.InfoWindow({
                    content: '<strong>康欣老人長期照顧中心(養護型)</strong><br />電話：(07)614-1273<br />傳真：(07)614-0136<br />E-mail：t18428603@yahoo.com.tw<br />地址：高雄市燕巢區安招里安東街188號',
                    size: new google.maps.Size(200, 200)
                });
                google.maps.event.addListener(marker, 'click', function () {
                    infowindow.open(map, marker);
                });
                infowindow.open(map, marker);
            });
        </script>
        <div id="user_gmap"></div>
        <hr />
    </div>

</asp:Content>
