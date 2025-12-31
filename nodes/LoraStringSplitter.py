class LoraStringSplitter:
    @classmethod
    def INPUT_TYPES(cls):
        return {
            "required": {
                "input_string": (
                    "STRING",
                    {"default": "", "multiline": True}
                )
            }
        }

    RETURN_TYPES = ("STRING", "FLOAT", "STRING", "FLOAT", "STRING")
    RETURN_NAMES = (
        "lora_high_string",
        "lora_high_strength",
        "lora_low_string",
        "lora_low_strength",
        "text",
    )
    FUNCTION = "split"
    CATEGORY = "utils/loras"

    def split(self, input_string):
        """
        Verwacht minimaal:
        lora1,strength1,lora2,strength2,rest...
        """

        # Split op komma
        parts = [p.strip() for p in input_string.split(",")]

        # Veiligheidsnet (vaste indices)
        lora_high = parts[0] if len(parts) > 0 else "none"
        strength_high = float(parts[1]) if len(parts) > 1 and parts[1] else 0.0
        lora_low = parts[2] if len(parts) > 2 else "none"
        strength_low = float(parts[3]) if len(parts) > 3 and parts[3] else 0.0

        # Alles na index 3 is text (kan zelf komma’s bevatten)
        text = ",".join(parts[4:]).strip() if len(parts) > 4 else ""

        return (
            lora_high,
            strength_high,
            lora_low,
            strength_low,
            text,
        )


NODE_CLASS_MAPPINGS = {
    "LoraStringSplitter": LoraStringSplitter
}

NODE_DISPLAY_NAME_MAPPINGS = {
    "LoraStringSplitter": "LoRA CSV → 2x LoRA/strenght + Text"
}