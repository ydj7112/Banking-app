<!DOCTYPE html>
<html lang="en" title="Coding design">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Transaction Table</title>
    <link rel="stylesheet" href="css/TransHist.css">
</head>

<body>
    <main class="table">
        <section class="table__header">
            <h2>Transaction History</h2>
            <div class="export__file">
                <label for="export-file" class="export__file-btn" title="Export File"></label>
                <input type="checkbox" id="export-file">
                <div class="export__file-options">
                    <label>Export As &nbsp; &#10140;</label>
                    <label for="export-file" id="toPDF">PDF <img src="images/pdf.png" alt=""></label>
                    <label for="export-file" id="toJSON">JSON <img src="images/json.png" alt=""></label>
                    <label for="export-file" id="toCSV">CSV <img src="images/csv.png" alt=""></label>
                    <label for="export-file" id="toEXCEL">EXCEL <img src="images/excel.png" alt=""></label>
                </div>
            </div>
        </section>
        <section class="table__body">
            <table>
                <thead>
                    <tr>
                        <th> Sr.no </th>
                        <th> Date </th>
                        <th> Reference No </th>
                        <th> Description </th>
                        <th> Status </th>
                        <th> Withdrawal </th>
                        <th> Balance </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><%=session.getAttribute("transaction_date") %> </td>
                        <td><%=request.getAttribute("reference_id") %> </td>
                        <td><%=request.getAttribute("status") %> </td>
                        <td><%=request.getAttribute("deposit") %> </td>
                        <td><%=request.getAttribute("withdrawal") %> </td>
                        <td>     </td>
                        <td> <strong> <%=request.getAttribute("balance") %> </strong></td>
                    </tr>
                  <!--   <tr>
                        <td> 2 </td>
                        <td> 20 Dec, 2022 </td>
                        <td> REF1234567890 </td>
                        <td> Done </td>
                        <td>  </td>
                        <td>  50   </td>
                        <td> <strong> 950 </strong></td>
                    </tr>
                    <tr>
                        <td> 3 </td>
                        <td> 19 Dec, 2022 </td>
                        <td> REF1234567890 </td>
                        <td> Done </td>
                        <td>  </td>
                        <td>  100   </td>
                        <td> <strong> 850 </strong></td>
                    </tr>
                    <tr>
                        <td> 4 </td>
                        <td> 17 Dec, 2022 </td>
                        <td> REF1234567890 </td>
                        <td> Done </td>
                        <td>  </td>
                        <td>  100   </td>
                        <td> <strong> 750 </strong></td>
                    </tr> <tr>
                        <td> 5 </td>
                        <td> 17 Dec, 2022 </td>
                        <td> REF1234567890 </td>
                        <td> Done </td>
                        <td> 100 </td>
                        <td>     </td>
                        <td> <strong> 100 </strong></td>
                    </tr>
                    <tr>
                        <td> 6 </td>
                        <td> 17 Dec, 2022 </td>
                        <td> REF1234567890 </td>
                        <td> Done </td>
                        <td> 100 </td>
                        <td>     </td>
                        <td> <strong> 500 </strong></td>
                    </tr>  -->
                </tbody>
            </table>
        </section>
    </main>
</body>

</html>