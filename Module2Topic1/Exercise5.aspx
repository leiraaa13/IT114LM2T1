<%@ Page Language="C#" MasterPageFile="~/Site1.Master" CodeBehind="~/Exercise5.aspx.cs" Inherits="Module1Exercise1.Exercise4" %>

<%-- Exercise 5: Creating reusable layouts using master pages--%>
<%-- TODO 5.1 Create a master page that contains a navigation bar, a main content, and a footer. --%>
<%-- The navigation bar should contain links to the other exercises --%>
<%-- The main content must include the content that the other pages will implement --%>
<%-- The footer should contain the copyright information of the page. I.e. it should display "Copyright <your name> 2024" --%>
<%-- Hint: https://www.c-sharpcorner.com/article/how-to-create-master-page-in-asp-net/ --%>

<%-- TODO 5.2 Make this page use the master page that you have created --%>
<%-- In the main content of this page, write your reflection about the following: --%>
<%-- * How would you compare plain HTML to ASP.NET WebForms --%>
<%-- * The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples. --%>
<%-- * Explain what post backs are. --%>

<asp:Content ID="MasterPageContent" ContentPlaceHolderID="MainContent" runat="server">
    <h4>How would you compare plain HTML to ASP.NET WebForms?</h4>
    <p>HTML provides the foundation for web pages and can be enhanced with client-side scripting, meanwhile ASP.NET WebForms offers a higher-level framework for server-side development, allowing for the creation of dynamic and interactive web applications with rich user interfaces. WebForms abstracts away much of the complexity of web development by providing a set of server-side controls and events that enable rapid application development and easy integration with backend systems. Additionally, WebForms incorporates features such as state management, data binding, and authentication, simplifying common tasks and providing a consistent programming model for building enterprise-level web applications.</p>
    <h4> The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript?</h4>
    <p>In situations where the logic requires handling sensitive user data, such as personal information or financial transactions, implementing it in the code-behind is crucial for security reasons. This includes tasks such as user authentication, authorization checks, and encryption/decryption of data. By keeping such logic on the server-side, we minimize the risk of exposing sensitive information to potential security threats. Conversely, for tasks that involve real-time user interactions and visual feedback without server involvement, JavaScript proves invaluable. For instance, implementing client-side form validation ensures that users receive immediate feedback on their input, enhancing usability and reducing frustration. Additionally, dynamic content loading through AJAX calls enables seamless updates to specific sections of a webpage without requiring a full page reload, improving the overall responsiveness of the application.</p>
    <h4>Explain what post backs are</h4>
    <p>A postback in web development refers to the process where a web page sends data back to the server for processing, typically in response to a user action such as clicking a button or submitting a form. When a postback occurs, the entire page is sent back to the server, including any user input or changes made to the page. The server then processes the data, performs any necessary operations, and sends a response back to the client, which can include updated content or instructions for further actions. Postbacks are integral to the functionality of server-side web applications built on frameworks like ASP.NET WebForms, where they enable dynamic interaction and the updating of content without requiring the entire page to be refreshed.</p>
</asp:Content>