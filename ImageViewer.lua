local function init()
end

local function run(event)
    lcd.clear()

    -- Paths for the two 64x64 images
    local imagePath1 = "/SCRIPTS/TOOLS/IMAGEVIEWER/bitmap1.bmp"
    local imagePath2 = "/SCRIPTS/TOOLS/IMAGEVIEWER/bitmap2.bmp"

    -- Load the first image
    local img1 = io.open(imagePath1, "r")
    if img1 then
        io.close(img1)
        -- Draw the first image at position (0, 0)
        lcd.drawPixmap(0, 0, imagePath1)
    end

    -- Load the second image
    local img2 = io.open(imagePath2, "r")
    if img2 then
        io.close(img2)
        -- Draw the second image at position (64, 0)
        lcd.drawPixmap(64, 0, imagePath2)
    end

    return 0
end


return { init=init, run=run }
