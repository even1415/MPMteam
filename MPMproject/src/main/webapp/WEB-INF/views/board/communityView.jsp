<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="/common/top"/>
<!--main----------------------------------------------------->
        <div class="container">
            <h1 class="cth1">Ŀ�´�Ƽ</h1>
            <table border="1" bgcolor="blue" class="nttable2">
                <tr>
                    <td style="font-weight:bold;background-color: rgb(189, 224, 255);">�۹�ȣ</td>
                    <td style="background-color: rgb(189, 224, 255);">1</td>
                    <td style="font-weight:bold;background-color: rgb(189, 224, 255);">����</td>
                    <td style="background-color: rgb(189, 224, 255);">����â�Դϴ�</td>
                    <td style="font-weight:bold;background-color: rgb(189, 224, 255);">��ȸ��</td>
                    <td style="background-color: rgb(189, 224, 255);">10</td>
                    <td style="font-weight:bold;background-color: rgb(189, 224, 255);">�����</td>
                    <td style="background-color: rgb(189, 224, 255);">2022-02-06</td>
                </tr>
                <tr>
                    <td colspan='8' rowspan="2">
                        <p style="font-weight:bold;float:left;margin-left:15px;margin-top: 5px;">�۳���</p>
                        <textarea name="ctcontent1" id="ctcontent1"></textarea>
                        <button type="submit" id="ctdelete" style="background-color: #3D56B2;color: white;">�� ����</button>
                        <button type="submit" id="ctedit" style="background-color: #3D56B2;color: white;">�� ����</button>
                    </td>
                </tr>
                
            </table>
        </div>

<c:import url="/common/foot"/>