<head>

</head>
<body>
<label>Start Month</label><select id="startMonth">
    <option value="1">Jan</option>
    <option value="2">Feb</option>
    <option value="3">Mar</option>
    <option value="4">Apr</option>
    <option value="5">May</option>
    <option value="6">Jun</option>
    <option value="7">Jul</option>
    <option value="8">Aug</option>
    <option value="9">Sep</option>
    <option value="10">Oct</option>
    <option value="11">Nov</option>
    <option value="12">Dec</option>
</select>
<label>End Month</label><label>Start Month</label><select id="endMonth">
    <option value="1">Jan</option>
    <option value="2">Feb</option>
    <option value="3">Mar</option>
    <option value="4">Apr</option>
    <option value="5">May</option>
    <option value="6">Jun</option>
    <option value="7">Jul</option>
    <option value="8">Aug</option>
    <option value="9">Sep</option>
    <option value="10">Oct</option>
    <option value="11">Nov</option>
    <option value="12">Dec</option>
</select>
<canvas id="myChart" height="calc(100%-18px)"></canvas>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.js"></script>
<script
        src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
<script>
    var startMonth = 1;
    var endMonth = 12;
    var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'];
    var monthsSelected = months;
    var data = <?php echo json_encode($sales); ?>;
    var ctx = document.getElementById("myChart").getContext('2d');
    renderChart();
    var myChart;
    function renderChart() {

            myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: monthsSelected,
                datasets: [{
                    label: 'Walmart',
                    backgroundColor: 'blue',
                    borderColor: 'black',
                    borderWidth: 1,
                    data: getWalmartData()
                },
                    {
                        label: 'Amazon',
                        backgroundColor: 'yellow',
                        borderColor: 'black',
                        borderWidth: 1,
                        data: getAmazonData()
                    }]
            },
            options: {
                scales: {
                    yAxes: [{
                        stacked: true
                    }],
                    xAxes: [{
                        stacked: true
                    }]
                },
                responsive: true,
                tooltips: {
                    mode: 'index',
                    intersect: false
                }
            }
        });
    }
    function getWalmartData() {
        var arrayForReturn = [];
        for (var i = 0; i < data.length; i++) {
            if (parseInt(data[i].month) >= startMonth && parseInt(data[i].month) <= endMonth && data[i].provider == "Walmart") {
                arrayForReturn.push(data[i].amount);
            }
        }
        return arrayForReturn;
    }
    function getAmazonData() {
        var arrayForReturn = [];
        for (var i = 0; i < data.length; i++) {
            if (parseInt(data[i].month) >= startMonth && parseInt(data[i].month) <= endMonth && data[i].provider == "Amazon") {
                arrayForReturn.push(data[i].amount);
            }
        }
        return arrayForReturn;
    }
    $('#startMonth').change(function() {
        startMonth = $('#startMonth').val();
        monthsSelected = [];
        for (var i = 0; i < months.length; i++) {
            if (i + 1 >= startMonth && i + 1 <= endMonth) {
                monthsSelected.push(months[i]);
            }
        }
        myChart.destroy();
        renderChart();
    });
    $('#endMonth').change( function () {
        endMonth = $('#endMonth').val();
        monthsSelected = [];
        for (var i = 0; i < months.length; i++) {
            if (i + 1 >= startMonth && i + 1 <= endMonth) {
                monthsSelected.push(months[i]);
            }
        }
        myChart.destroy();
        renderChart();
    });
</script>

</body>
