<style>
  #donwloadBtn {
    position: fixed;
    right: 0;
    background-color: #366092;
    color: white;
    border: 1px solid #366092;
    height: 30px;
    top: 30px;
    font-size: 13px;
    width: 100px;
  }
  #donwloadBtn:hover {
    position: fixed;
    right: 0.9%;
    background-color: white;
    color: #366092;
    cursor: pointer;
    height: 30px;
    top: 30px;
    font-size: 13px;
    font-weight: bold;
    width: 100px;
  }
  #downloadDiv {
    position: fixed;
    z-index: 2016;
  }
</style>
<div id="downloadDiv">
  <button id='donwloadBtn' onclick="DownloadFile()">
    下载该文件
  </button>
</div>
<script>
  function DownloadFile()
  {
    const elt = document.createElement('a');
    elt.setAttribute('href', '${downloadUrl}');
    elt.setAttribute('download', '${fileName}');
    elt.style.display = 'none';
    document.body.appendChild(elt);
    elt.click();
    document.body.removeChild(elt);
  }
</script>