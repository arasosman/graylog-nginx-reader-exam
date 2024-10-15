function add_short_message(tag, timestamp, record)
    -- Mevcut alanları al
    local time = record["time"] or ""
    local level = record["level"] or ""
    local jail = record["jail"] or ""
    local action = record["action"] or ""
    local message = record["message"] or ""

    -- short_message alanını oluştur
    record["short_message"] = time .. " " .. level .. " " .. jail .. " " .. action .. " " .. message

    -- Güncellenmiş kaydı geri döndür
    return 1, timestamp, record
end