<template>
    <!-- Hourly forecast -->
  <div class="flex w-full justify-end">
    <div class="w-1/3 bg-gray-500 rounded m-10 p-3 grid-rows-3">
      <div class="hourly-forecast row-span-1 card-title">Here dynamic forecast in words from back</div>
      <hr>
      <div class="flex w-full">
        <div class="w-1/6 m-2 bg-gray-800 rounded row-span-1 grid-rows-3">
          <div class="hour row-span-1 ">01</div>
          <img/>
          <div class="temperature row-span-1 ">21</div>
        </div>
      </div>
    </div>
  </div>
  <!-- Weekly forecast -->
  <div class="flex w-full justify-end">
    <div class="w-1/3 bg-gray-500 rounded m-10 p-3 grid-rows-3">
      <div class="weekly-forecast row-span-1 card-title">Here dynamic forecast in words from back</div>
      <hr>
      <div class="flex w-full">
        <div class="w-1/6 m-2 bg-gray-800 rounded row-span-1 grid-rows-3">
          <div class="hour row-span-1">01</div>
          <img/>
          <div class="temperature row-span-1">21</div>
        </div>
      </div>
    </div>
  </div>
  <div class="flex w-full justify-end">
    <div class="flex w-1/3 rounded m-10 justify-between">
      <!-- UV -->
      <div class="bg-gray-600 rounded my-10 p-3 grid-rows-3">
        <div class="card-title row-span-1">UV index</div>
        <hr/>
        <div class="row-span-1">3</div>
        <div class="row-span-1">Moderate</div>
      </div>
      <!-- Wind -->
      <div class="bg-gray-600 rounded my-10 p-3 grid-rows-2">
        <div class="card-title row-span-1">Wind</div>
        <hr/>
        <div class="card-title row-span-1">3 MPH</div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: 'Home',
  data() {
    
  }
}
</script>
<style>
  * {
    font-family: "Fira Sans", sans-serif;
  }
  .card-title {
    font-size: large;
  }
</style>