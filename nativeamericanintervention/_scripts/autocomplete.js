$(function () {
    var availableTags = [
       "Anal",
       "Arts Program",
       "Biologic",
       "Breast",
       "Cancer (General)",
       "Cervical",
       "Colorectal",
       "Community Based Participatory Research (CBPR)",
       "Community Health Worker",
       "Community",
       "Detection",
       "Diagnosis",
       "Faith Based",
       "Health Education and Promotion",
       "Health-Care System",
       "Higher Education",
       "Home",
       "Innovative Technology",
       "Oral",
       "Palliative",
       "Prevention",
       "Prostate",
       "Schools",
       "Screening Program",
       "Skin",
       "Support Group",
       "Survivorship",
       "Testicular",
       "Training for Health Professionals",
       "Treatment",
       "Unknown"
    ];

    $("#TXT_SRCH").autocomplete({
        source: availableTags
    });
});