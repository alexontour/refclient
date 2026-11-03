function openLocalModal(modal) {
  if (!modal) {
    return;
  }

  modal.classList.add("show");
  modal.removeAttribute("aria-hidden");
  modal.setAttribute("aria-modal", "true");
  modal.setAttribute("role", "dialog");
  modal.style.display = "block";
  document.body.classList.add("modal-open");

  if (!document.querySelector(".modal-backdrop[data-local-modal-backdrop]")) {
    const backdrop = document.createElement("div");
    backdrop.className = "modal-backdrop fade show";
    backdrop.dataset.localModalBackdrop = "true";
    document.body.appendChild(backdrop);
  }

  const focusTarget = modal.querySelector("[data-local-modal-dismiss], button, iframe");
  if (focusTarget) {
    focusTarget.focus();
  } else {
    modal.focus();
  }
}

function closeLocalModal(modal) {
  if (!modal) {
    return;
  }

  modal.classList.remove("show");
  modal.setAttribute("aria-hidden", "true");
  modal.removeAttribute("aria-modal");
  modal.removeAttribute("role");
  modal.style.display = "none";
  document.body.classList.remove("modal-open");
  document.querySelectorAll(".modal-backdrop[data-local-modal-backdrop]").forEach((backdrop) => {
    backdrop.remove();
  });
}

document.addEventListener("click", (event) => {
  const opener = event.target.closest("[data-local-modal-target]");
  if (opener) {
    event.preventDefault();
    const modal = document.querySelector(opener.dataset.localModalTarget);
    openLocalModal(modal);
    return;
  }

  const dismiss = event.target.closest("[data-local-modal-dismiss]");
  if (dismiss) {
    event.preventDefault();
    closeLocalModal(dismiss.closest(".modal"));
    return;
  }

  if (event.target.classList.contains("modal") && event.target.classList.contains("show")) {
    closeLocalModal(event.target);
  }
});

document.addEventListener("keydown", (event) => {
  if (event.key !== "Escape") {
    return;
  }

  const openModal = document.querySelector(".modal.show");
  closeLocalModal(openModal);
});

document.addEventListener("DOMContentLoaded", () => {
  if (!window.bootstrap) {
    return;
  }

  document.querySelectorAll('[data-bs-toggle="tooltip"]').forEach((element) => {
    new window.bootstrap.Tooltip(element);
  });
});
