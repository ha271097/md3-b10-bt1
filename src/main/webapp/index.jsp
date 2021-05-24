<%@ page import="java.util.ArrayList" %><%--Created by IntelliJ IDEA.
  User: nguye
  Date: 5/23/2021
  Time: 10:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Display custom list</title>
      <style>
          table{
              width: 100%;
              border-spacing: 0;
          }
          table thead th {
              text-align: left;
          }
          table tbody td {
              text-align: left;
              border: none;
              border-bottom: 1px solid;
          }
      </style>
  </head>
  <body>
<%
    class Customer{
        private String name;
        private String birth;
        private String address;
        private String img;

        public Customer() {
        }

        public Customer(String name, String birth, String address, String img) {
            this.name = name;
            this.birth = birth;
            this.address = address;
            this.img = img;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getBirth() {
            return birth;
        }

        public void setBirth(String birth) {
            this.birth = birth;
        }

        public String getAddress() {
            return address;
        }

        public void setAddress(String address) {
            this.address = address;
        }

        public String getImg() {
            return img;
        }

        public void setImg(String img) {
            this.img = img;
        }
    }
  ArrayList <Customer> customer = new ArrayList<>();
  customer.add(new Customer("Mai Van Hoan", "1983-08-20", "Ha Noi", "https://itcafe.vn/wp-content/uploads/2021/01/anh-gai-xinh-4.jpg") );
  customer.add(new Customer("Nguyen Van Nam", "1983-08-21", "Bac Giang", "https://anhdep123.com/wp-content/uploads/2021/02/hinh-nen-gai-xinh-full-hd-cho-dien-thoai.jpg"));
  customer.add(new Customer("Nguyen Thai Hoa", "1983-08-22", "Nam Dinh", "https://vectormienphi.com/wp-content/uploads/2020/05/T%E1%BB%95ng-h%E1%BB%A3p-h%C3%ACnh-%E1%BA%A3nh-g%C3%A1i-xinh-H%C3%A0-N%E1%BB%99i-%C4%91%E1%BA%B9p-%C4%91%E1%BA%B9p-nh%E1%BA%A5t-2-718x1024-1.jpg"));
  customer.add(new Customer("Tran Dang Khoa", "1983-08-17", "Ha Noi", "https://michise.com/wp-content/uploads/2021/01/anh-gai-xinh-deo-kinh-toc-ngan-ngau-750x536.jpg"));
  customer.add(new Customer("Nguyen Dinh Thi", "1983-08-20", "Ha Noi", "https://thuthuatnhanh.com/wp-content/uploads/2019/07/anh-girl-xinh-facebook-tuyet-dep-387x580.jpg)"));

%>
<table>
   <thead>
   <tr>
       <th>Ten</th>
       <th>Ngay sinh</th>
       <th>Dia chi</th>
       <th>Anh</th>
   </tr>
   </thead>
    <tbody>
    <tr>
        <td><%=customer.get(0).getName()%></td>
        <td><%=customer.get(0).getBirth()%></td>
        <td><%=customer.get(0).getAddress()%></td>
        <td><div style="width: 150px;height: 150px"><img style="width: 100%;height: 100%" src = <%=customer.get(0).getImg()%>></div></td>
    </tr>
    <tr>
        <td><%=customer.get(1).getName()%></td>
        <td><%=customer.get(1).getBirth()%></td>
        <td><%=customer.get(1).getAddress()%></td>
        <td><div style="width: 150px;height: 150px"><img style="width: 100%;height: 100%" src = <%=customer.get(1).getImg()%>></div></td>
    </tr>
    <tr>
        <td><%=customer.get(2).getName()%></td>
        <td><%=customer.get(2).getBirth()%></td>
        <td><%=customer.get(2).getAddress()%></td>
        <td><div style="width: 150px;height: 150px"><img style="width: 100%;height: 100%" src = <%=customer.get(2).getImg()%>></div></td>
    </tr>
    <tr>
        <td><%=customer.get(3).getName()%></td>
        <td><%=customer.get(3).getBirth()%></td>
        <td><%=customer.get(3).getAddress()%></td>
        <td><div style="width: 150px;height: 150px"><img style="width: 100%;height: 100%" src = <%=customer.get(3).getImg()%>></div></td>
    </tr>
    <tr>
        <td><%=customer.get(4).getName()%></td>
        <td><%=customer.get(4).getBirth()%></td>
        <td><%=customer.get(4).getAddress()%></td>
        <td><div style="width: 150px;height: 150px"><img style="width: 100%;height: 100%" src = <%=customer.get(4).getImg()%>></div></td>
    </tr>
    </tbody>

</table>
  </body>
</html>
