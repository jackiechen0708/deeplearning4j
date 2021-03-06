<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />

    <title>RL utility interface</title>

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous" />

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous" />

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- d3 -->
    <script src="//d3js.org/d3.v3.min.js" charset="utf-8"></script>

    <!-- Booststrap Notify plugin-->
    <script src="/assets/bootstrap-notify.min.js"></script>

    <!-- DateTime formatter-->
    <script src="/assets/DateTimeFormat.js"></script>



    <script src="/assets/common.js"></script>
    <script src="/assets/renderRL.js"></script>

    <style>
        .hd {
        background-color: #000000;
        font-size: 18px;
        color: #FFFFFF;
        }
        .block {
        width: 250px;
        height: 350px;
        display: inline-block;
        border: 1px solid #DEDEDE;
        margin-right: 64px;
        }
        .hd-small {
        background-color: #000000;
        font-size: 14px;
        color: #FFFFFF;
        }

        body {
            font-family: 'Roboto', sans-serif;
            color: #333;
            font-weight: 300;
            font-size: 16px;
        }
        #wrap {
            width: 800px;
            margin-left: auto;
            margin-right: auto;
        }
        #embed {
            margin-top: 10px;
        }
        h1 {
            text-align: center;
            font-weight: normal;
        }
        .tt {
            margin-top: 10px;
            background-color: #EEE;
            border-bottom: 1px solid #333;
            padding: 5px;
        }
        .txth {
            color: #F55;
        }
        .cit {
            font-family: courier;
            padding-left: 20px;
            font-size: 14px;
        }
        .axis {

        }
        .axis path,
        .axis line {
            fill: none;
            stroke: rgba(0,0,0,0.1);
            shape-rendering: crispEdges;
        }
        .axis text {
            font-family: sans-serif;
            font-size: 11px;
            fill: #666;
        }
        .label {
            font-size:14px;
            fill:rgba(0,0,0,0.5);
            shape-rendering:auto;
        }
    </style>
</head>
<body>
<table style="width: 100%; padding: 5px;" class="hd">
    <tbody>
    <tr>
        <td style="width: 48px;"><a href="/"><img src="/assets/deeplearning4j.img" border="0"/></a></td>
        <td>DeepLearning4j UI</td>
        <td style="width: 512px; text-align: right;" class="hd-small">&nbsp; Available sessions: <select class="selectpicker" id="sessionSelector" onchange="window.location.href = 'flow?sid='+ this.options[this.selectedIndex].value ;" style="color: #000000; display: inline-block; width: 256px;">
            <option value="0" selected="selected">Pick a session to track</option>
        </select>&nbsp;&nbsp;
            <script>
                            buildSessionSelector("RL");
                        </script>
        </td>
        <td style="width: 256px;" class="hd-small">&nbsp;Updated at: <b><span id="updatetime">No updates so far</span></b>&nbsp;</td>
    </tr>
    </tbody>
</table>
<br /> <br />
<div style="text-align: center">
    <div id="embed" style="display: inline-block; width: 1024px; height: 700px; border: 1px solid #DEDEDE;"></div>
</div>
</body>
</body>
</html>