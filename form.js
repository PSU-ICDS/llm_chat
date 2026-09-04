const gpuRegex = /(p100|a100|a100_3g|a100_1g|a40)/;

function toggleGpuField() {
  const account =
    document.getElementById("batch_connect_session_context_auto_accounts")
      ?.value || "";

  document.getElementById(
    "batch_connect_session_context_local_gpus_wrapper"
  ).hidden = !gpuRegex.test(account);
}

document.addEventListener("DOMContentLoaded", () => {
  toggleGpuField();
  document
    .getElementById("batch_connect_session_context_auto_accounts")
    ?.addEventListener("change", toggleGpuField);
});
