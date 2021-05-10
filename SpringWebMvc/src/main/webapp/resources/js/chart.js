fetch("/SpringWebMvc/api/statistics")
    .then(res => res.json())
    .then(datas => {
        google.charts.load('current', {'packages': ['corechart']});
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Ngành nghề', 'Số lượng người ứng tuyển'],
                ...datas
            ]);

            var options = {
                title: 'Thống kê ngành số lượng ứng viên ứng tuyển theo ngành nghề'
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);
        }
    });

