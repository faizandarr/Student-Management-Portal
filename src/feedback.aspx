<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="WebApplication_Project.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #89CFF0;
        }
        #form1 {
            width: 80%;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        h1 {
            text-align: center;
            margin-left: 40px;
        }
        table {
            border-collapse: collapse;
            margin-left: 0px;
            margin-top: 88px;
        }
        th, td {
            text-align: left;
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #0E86D4;
            font-weight: bold;
        }
        

    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <h1>Teachers FeedBack Form</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="myDateMonth" runat="server">
        
        <asp:ListItem Text="February" Value="Feb"></asp:ListItem>
       
             <asp:ListItem Text="Sep" Value="Sep"></asp:ListItem>
             
             <asp:ListItem Text="Dec" Value="Dec"></asp:ListItem>

       </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;
       <asp:DropDownList ID="myDateDay" runat="server">
       <asp:ListItem Text="1" Value="1"></asp:ListItem>
       <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="2"></asp:ListItem>
            <asp:ListItem Text="4" Value="2"></asp:ListItem>
            <asp:ListItem Text="5" Value="2"></asp:ListItem>
 
       </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;
       <asp:DropDownList ID="myDateYear" runat="server">
       <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
       <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
            <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
 
       </asp:DropDownList>

       </br> </br></br>
        <asp:Label ID="Label2" runat="server" Text="Teacher Name" ></asp:Label>
         &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Name" ></asp:TextBox>
         &nbsp;&nbsp;&nbsp;
        </br> </br></br>
       <asp:Label ID="Label3" runat="server" Text="Course" ></asp:Label>
         &nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="TextBox3" runat="server" placeholder="Course Name" ></asp:TextBox>
         &nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label4" runat="server" Text="Batch" ></asp:Label>
         &nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="TextBox4" runat="server" placeholder="Batch" ></asp:TextBox>
         &nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label5" runat="server" Text="Semister" ></asp:Label>
         &nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
       <asp:ListItem Text="Fall" Value="Fall"></asp:ListItem>
       <asp:ListItem Text="Spring" Value="Springs"></asp:ListItem>
       <asp:ListItem Text="Spring" Value="Summers"></asp:ListItem>
 
       </asp:DropDownList>
        </br></br></br>
        <b style="border-color: #C0C0C0; font-size: medium; color: #0000FF; font-style: oblique; font-weight: 200;">Please Fill out the form in evaluating your instructor for the sememster.After complition press 
        the submit button.
            </br></br>
            For reference the metric are as follows
            </br></br>
            1 - Poor
            </br>
            2 - Below Average
            </br>
            3 - Average
            </br>
            4 - Good
            </br>
            5 - Excellent
           </br></br>
            <h2>Professional Practices</h2>
            Q1.Teacher shows professionalism in class
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:DropDownList ID="DropDownList2" runat="server">
       <asp:ListItem Text="1" Value="1"></asp:ListItem>
       <asp:ListItem Text="2" Value="2"></asp:ListItem>
       <asp:ListItem Text="3" Value="3"></asp:ListItem>
       <asp:ListItem Text="4" Value="4"></asp:ListItem>
       <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
    
         </br>
        Q2.Teacher shows commitment to teaching the class
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList3" runat="server">
       <asp:ListItem Text="1" Value="1"></asp:ListItem>
       <asp:ListItem Text="2" Value="2"></asp:ListItem>
       <asp:ListItem Text="3" Value="3"></asp:ListItem>
       <asp:ListItem Text="4" Value="4"></asp:ListItem>
       <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            </br>
     Q3.Teacher encourages students to engage in class and ask questions
             &nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList4" runat="server">
       <asp:ListItem Text="1" Value="1"></asp:ListItem>
       <asp:ListItem Text="2" Value="2"></asp:ListItem>
       <asp:ListItem Text="3" Value="3"></asp:ListItem>
       <asp:ListItem Text="4" Value="4"></asp:ListItem>
       <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            </br>
    Q4.Teacher handles criticism professionally
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList5" runat="server">
       <asp:ListItem Text="1" Value="1"></asp:ListItem>
       <asp:ListItem Text="2" Value="2"></asp:ListItem>
       <asp:ListItem Text="3" Value="3"></asp:ListItem>
       <asp:ListItem Text="4" Value="4"></asp:ListItem>
       <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            </br>
    Q5.Teacher starts and ends class on time
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList6" runat="server">
       <asp:ListItem Text="1" Value="1"></asp:ListItem>
       <asp:ListItem Text="2" Value="2"></asp:ListItem>
       <asp:ListItem Text="3" Value="3"></asp:ListItem>
       <asp:ListItem Text="4" Value="4"></asp:ListItem>
       <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            </br>
            <h2>Appearence and personal presentation</h2>
     Q6.Teacher attends class in presentable manner
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList7" runat="server">
       <asp:ListItem Text="1" Value="1"></asp:ListItem>
       <asp:ListItem Text="2" Value="2"></asp:ListItem>
       <asp:ListItem Text="3" Value="3"></asp:ListItem>
       <asp:ListItem Text="4" Value="4"></asp:ListItem>
       <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            </br>

      Q7.Teacher shows enthusiasm when teaching in class
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList8" runat="server">
       <asp:ListItem Text="1" Value="1"></asp:ListItem>
       <asp:ListItem Text="2" Value="2"></asp:ListItem>
       <asp:ListItem Text="3" Value="3"></asp:ListItem>
       <asp:ListItem Text="4" Value="4"></asp:ListItem>
       <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            </br>
      Q8.Teacher shows initiativity and flexibility in teaching
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList9" runat="server">
       <asp:ListItem Text="1" Value="1"></asp:ListItem>
       <asp:ListItem Text="2" Value="2"></asp:ListItem>
       <asp:ListItem Text="3" Value="3"></asp:ListItem>
       <asp:ListItem Text="4" Value="4"></asp:ListItem>
       <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            </br>
      Q9.Does he/she have full knowledge about course
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList10" runat="server">
       <asp:ListItem Text="1" Value="1"></asp:ListItem>
       <asp:ListItem Text="2" Value="2"></asp:ListItem>
       <asp:ListItem Text="3" Value="3"></asp:ListItem>
       <asp:ListItem Text="4" Value="4"></asp:ListItem>
       <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            </br>
      Q10.Does he/she clearly hearable?
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList11" runat="server">
       <asp:ListItem Text="1" Value="1"></asp:ListItem>
       <asp:ListItem Text="2" Value="2"></asp:ListItem>
       <asp:ListItem Text="3" Value="3"></asp:ListItem>
       <asp:ListItem Text="4" Value="4"></asp:ListItem>
       <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            </br>
        <h2>Teaching Methods</h2>
       Q11.Does he/she use easy words and organize the less
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList12" runat="server">
       <asp:ListItem Text="1" Value="1"></asp:ListItem>
       <asp:ListItem Text="2" Value="2"></asp:ListItem>
       <asp:ListItem Text="3" Value="3"></asp:ListItem>
       <asp:ListItem Text="4" Value="4"></asp:ListItem>
       <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            </br>
        Q12.Teacher shows critical thinking
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList13" runat="server">
       <asp:ListItem Text="1" Value="1"></asp:ListItem>
       <asp:ListItem Text="2" Value="2"></asp:ListItem>
       <asp:ListItem Text="3" Value="3"></asp:ListItem>
       <asp:ListItem Text="4" Value="4"></asp:ListItem>
       <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            </br>
        Q13.Teacher handles class environment conductive for learning
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList14" runat="server">
       <asp:ListItem Text="1" Value="1"></asp:ListItem>
       <asp:ListItem Text="2" Value="2"></asp:ListItem>
       <asp:ListItem Text="3" Value="3"></asp:ListItem>
       <asp:ListItem Text="4" Value="4"></asp:ListItem>
       <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            </br>
        <h2>Desposition Towards Student</h2>
         Q14.Teacher shows equal respect to various cultural background student irrespective of religion and race
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList15" runat="server">
       <asp:ListItem Text="1" Value="1"></asp:ListItem>
       <asp:ListItem Text="2" Value="2"></asp:ListItem>
       <asp:ListItem Text="3" Value="3"></asp:ListItem>
       <asp:ListItem Text="4" Value="4"></asp:ListItem>
       <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            </br>
      Q15.Teacher determines students' strength and weekness for improvment
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList16" runat="server">
       <asp:ListItem Text="1" Value="1"></asp:ListItem>
       <asp:ListItem Text="2" Value="2"></asp:ListItem>
       <asp:ListItem Text="3" Value="3"></asp:ListItem>
       <asp:ListItem Text="4" Value="4"></asp:ListItem>
       <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
           
            <h2>Comment</h2>
              </b>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Height="51px" Width="782px" ></asp:TextBox>
        </br> </br> </br>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </form>
    
</html>
