INCLUDEPATH += \
    $$PWD \
    $$PWD/zxing

HEADERS += \
    $$PWD/bigint/BigInteger.hh \
    $$PWD/bigint/BigIntegerAlgorithms.hh \
    $$PWD/bigint/BigIntegerLibrary.hh \
    $$PWD/bigint/BigIntegerUtils.hh \
    $$PWD/bigint/BigUnsigned.hh \
    $$PWD/bigint/BigUnsignedInABase.hh \
    $$PWD/bigint/NumberlikeArray.hh \
    $$PWD/zxing/BarcodeFormat.h \
    $$PWD/zxing/Binarizer.h \
    $$PWD/zxing/BinaryBitmap.h \
    $$PWD/zxing/ChecksumException.h \
    $$PWD/zxing/DecodeHints.h \
    $$PWD/zxing/EncodeHint.h \
    $$PWD/zxing/Exception.h \
    $$PWD/zxing/FormatException.h \
    $$PWD/zxing/IllegalStateException.h \
    $$PWD/zxing/InvertedLuminanceSource.h \
    $$PWD/zxing/LuminanceSource.h \
    $$PWD/zxing/MultiFormatReader.h \
    $$PWD/zxing/NotFoundException.h \
    $$PWD/zxing/Reader.h \
    $$PWD/zxing/ReaderException.h \
    $$PWD/zxing/Result.h \
    $$PWD/zxing/ResultMetadata.h \
    $$PWD/zxing/ResultPoint.h \
    $$PWD/zxing/ResultPointCallback.h \
    $$PWD/zxing/UnsupportedEncodingException.h \
    $$PWD/zxing/WriterException.h \
    $$PWD/zxing/ZXing.h \
#    $$PWD/zxing/aztec/AztecDetectorResult.h \
#    $$PWD/zxing/aztec/AztecReader.h \
#    $$PWD/zxing/aztec/decoder/Decoder.h \
#    $$PWD/zxing/aztec/detector/Detector.h \
    $$PWD/zxing/common/Array.h \
    $$PWD/zxing/common/BitArray.h \
    $$PWD/zxing/common/BitMatrix.h \
    $$PWD/zxing/common/BitSource.h \
    $$PWD/zxing/common/ByteArray.h \
    $$PWD/zxing/common/CharacterSetECI.h \
    $$PWD/zxing/common/Counted.h \
    $$PWD/zxing/common/DecoderResult.h \
    $$PWD/zxing/common/DetectorResult.h \
    $$PWD/zxing/common/GlobalHistogramBinarizer.h \
    $$PWD/zxing/common/GreyscaleLuminanceSource.h \
    $$PWD/zxing/common/GreyscaleRotatedLuminanceSource.h \
    $$PWD/zxing/common/GridSampler.h \
    $$PWD/zxing/common/HybridBinarizer.h \
    $$PWD/zxing/common/IllegalArgumentException.h \
    $$PWD/zxing/common/PerspectiveTransform.h \
    $$PWD/zxing/common/Point.h \
    $$PWD/zxing/common/Str.h \
    $$PWD/zxing/common/StringUtils.h \
    $$PWD/zxing/common/Types.h \
    $$PWD/zxing/common/detector/JavaMath.h \
    $$PWD/zxing/common/detector/MathUtils.h \
    $$PWD/zxing/common/detector/MonochromeRectangleDetector.h \
    $$PWD/zxing/common/detector/WhiteRectangleDetector.h \
    $$PWD/zxing/common/reedsolomon/GenericGF.h \
    $$PWD/zxing/common/reedsolomon/GenericGFPoly.h \
    $$PWD/zxing/common/reedsolomon/ReedSolomonDecoder.h \
    $$PWD/zxing/common/reedsolomon/ReedSolomonEncoder.h \
    $$PWD/zxing/common/reedsolomon/ReedSolomonException.h \
    $$PWD/zxing/datamatrix/DataMatrixReader.h \
    $$PWD/zxing/datamatrix/Version.h \
    $$PWD/zxing/datamatrix/decoder/BitMatrixParser.h \
    $$PWD/zxing/datamatrix/decoder/DataBlock.h \
    $$PWD/zxing/datamatrix/decoder/DecodedBitStreamParser.h \
    $$PWD/zxing/datamatrix/decoder/Decoder.h \
    $$PWD/zxing/datamatrix/detector/CornerPoint.h \
    $$PWD/zxing/datamatrix/detector/Detector.h \
    $$PWD/zxing/datamatrix/detector/DetectorException.h \
    $$PWD/zxing/multi/ByQuadrantReader.h \
    $$PWD/zxing/multi/GenericMultipleBarcodeReader.h \
    $$PWD/zxing/multi/MultipleBarcodeReader.h \
    $$PWD/zxing/multi/qrcode/QRCodeMultiReader.h \
    $$PWD/zxing/multi/qrcode/detector/MultiDetector.h \
    $$PWD/zxing/multi/qrcode/detector/MultiFinderPatternFinder.h \
#    $$PWD/zxing/oned/CodaBarReader.h \
#    $$PWD/zxing/oned/Code128Reader.h \
#    $$PWD/zxing/oned/Code39Reader.h \
#    $$PWD/zxing/oned/Code93Reader.h \
#    $$PWD/zxing/oned/EAN13Reader.h \
#    $$PWD/zxing/oned/EAN8Reader.h \
#    $$PWD/zxing/oned/EANManufacturerOrgSupport.h \
#    $$PWD/zxing/oned/ITFReader.h \
#    $$PWD/zxing/oned/MultiFormatOneDReader.h \
#    $$PWD/zxing/oned/MultiFormatUPCEANReader.h \
#    $$PWD/zxing/oned/OneDReader.h \
#    $$PWD/zxing/oned/OneDResultPoint.h \
#    $$PWD/zxing/oned/UPCAReader.h \
#    $$PWD/zxing/oned/UPCEANExtension2Support.h \
#    $$PWD/zxing/oned/UPCEANExtension5Support.h \
#    $$PWD/zxing/oned/UPCEANExtensionSupport.h \
#    $$PWD/zxing/oned/UPCEANReader.h \
#    $$PWD/zxing/oned/UPCEReader.h \
#    $$PWD/zxing/oned/rss/AbstractRSSReader.h \
#    $$PWD/zxing/oned/rss/DataCharacter.h \
#    $$PWD/zxing/oned/rss/FinderPattern.h \
#    $$PWD/zxing/oned/rss/Pair.h \
#    $$PWD/zxing/oned/rss/RSS14Reader.h \
#    $$PWD/zxing/oned/rss/RSSUtils.h \
#    $$PWD/zxing/oned/rss/expanded/BitArrayBuilder.h \
#    $$PWD/zxing/oned/rss/expanded/ExpandedPair.h \
#    $$PWD/zxing/oned/rss/expanded/ExpandedRow.h \
#    $$PWD/zxing/oned/rss/expanded/RSSExpandedReader.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI013103decoder.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI01320xDecoder.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI01392xDecoder.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI01393xDecoder.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI013x0xDecoder.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI01decoder.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI01weightDecoder.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/AnyAIDecoder.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/BlockParsedResult.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/CurrentParsingState.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/DecodedChar.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/DecodedInformation.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/DecodedNumeric.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/DecodedObject.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/FieldParser.h \
#    $$PWD/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder.h \
#    $$PWD/zxing/pdf417/PDF417Reader.h \
#    $$PWD/zxing/pdf417/decoder/BitMatrixParser.h \
#    $$PWD/zxing/pdf417/decoder/DecodedBitStreamParser.h \
#    $$PWD/zxing/pdf417/decoder/Decoder.h \
#    $$PWD/zxing/pdf417/decoder/ec/ErrorCorrection.h \
#    $$PWD/zxing/pdf417/decoder/ec/ModulusGF.h \
#    $$PWD/zxing/pdf417/decoder/ec/ModulusPoly.h \
#    $$PWD/zxing/pdf417/detector/Detector.h \
#    $$PWD/zxing/pdf417/detector/LinesSampler.h \
    $$PWD/zxing/qrcode/ErrorCorrectionLevel.h \
    $$PWD/zxing/qrcode/FormatInformation.h \
    $$PWD/zxing/qrcode/QRCodeReader.h \
    $$PWD/zxing/qrcode/Version.h \
    $$PWD/zxing/qrcode/decoder/BitMatrixParser.h \
    $$PWD/zxing/qrcode/decoder/DataBlock.h \
    $$PWD/zxing/qrcode/decoder/DataMask.h \
    $$PWD/zxing/qrcode/decoder/DecodedBitStreamParser.h \
    $$PWD/zxing/qrcode/decoder/Decoder.h \
    $$PWD/zxing/qrcode/decoder/Mode.h \
    $$PWD/zxing/qrcode/detector/AlignmentPattern.h \
    $$PWD/zxing/qrcode/detector/AlignmentPatternFinder.h \
    $$PWD/zxing/qrcode/detector/Detector.h \
    $$PWD/zxing/qrcode/detector/FinderPattern.h \
    $$PWD/zxing/qrcode/detector/FinderPatternFinder.h \
    $$PWD/zxing/qrcode/detector/FinderPatternInfo.h \
    $$PWD/zxing/qrcode/encoder/BlockPair.h \
    $$PWD/zxing/qrcode/encoder/ByteMatrix.h \
    $$PWD/zxing/qrcode/encoder/Encoder.h \
    $$PWD/zxing/qrcode/encoder/MaskUtil.h \
    $$PWD/zxing/qrcode/encoder/MatrixUtil.h \
    $$PWD/zxing/qrcode/encoder/QRCode.h

SOURCES += \
    $$PWD/bigint/BigInteger.cc \
    $$PWD/bigint/BigIntegerAlgorithms.cc \
    $$PWD/bigint/BigIntegerUtils.cc \
    $$PWD/bigint/BigUnsigned.cc \
    $$PWD/bigint/BigUnsignedInABase.cc \
    $$PWD/zxing/BarcodeFormat.cpp \
    $$PWD/zxing/Binarizer.cpp \
    $$PWD/zxing/BinaryBitmap.cpp \
    $$PWD/zxing/ChecksumException.cpp \
    $$PWD/zxing/DecodeHints.cpp \
    $$PWD/zxing/EncodeHint.cpp \
    $$PWD/zxing/Exception.cpp \
    $$PWD/zxing/FormatException.cpp \
    $$PWD/zxing/IllegalStateException.cpp \
    $$PWD/zxing/InvertedLuminanceSource.cpp \
    $$PWD/zxing/LuminanceSource.cpp \
    $$PWD/zxing/MultiFormatReader.cpp \
    $$PWD/zxing/NotFoundException.cpp \
    $$PWD/zxing/Reader.cpp \
    $$PWD/zxing/ReaderException.cpp \
    $$PWD/zxing/Result.cpp \
    $$PWD/zxing/ResultIO.cpp \
    $$PWD/zxing/ResultMetadata.cpp \
    $$PWD/zxing/ResultPoint.cpp \
    $$PWD/zxing/ResultPointCallback.cpp \
    $$PWD/zxing/UnsupportedEncodingException.cpp \
    $$PWD/zxing/WriterException.cpp \
#    $$PWD/zxing/aztec/AztecDetectorResult.cpp \
#    $$PWD/zxing/aztec/AztecReader.cpp \
#    $$PWD/zxing/aztec/decoder/AztecDecoder.cpp \
#    $$PWD/zxing/aztec/detector/AztecDetector.cpp \
    $$PWD/zxing/common/BitArray.cpp \
    $$PWD/zxing/common/BitArrayIO.cpp \
    $$PWD/zxing/common/BitMatrix.cpp \
    $$PWD/zxing/common/BitSource.cpp \
    $$PWD/zxing/common/CharacterSetECI.cpp \
    $$PWD/zxing/common/Counted.cpp \
    $$PWD/zxing/common/DecoderResult.cpp \
    $$PWD/zxing/common/DetectorResult.cpp \
    $$PWD/zxing/common/GlobalHistogramBinarizer.cpp \
    $$PWD/zxing/common/GreyscaleLuminanceSource.cpp \
    $$PWD/zxing/common/GreyscaleRotatedLuminanceSource.cpp \
    $$PWD/zxing/common/GridSampler.cpp \
    $$PWD/zxing/common/HybridBinarizer.cpp \
    $$PWD/zxing/common/IllegalArgumentException.cpp \
    $$PWD/zxing/common/PerspectiveTransform.cpp \
    $$PWD/zxing/common/Str.cpp \
    $$PWD/zxing/common/StringUtils.cpp \
    $$PWD/zxing/common/detector/MonochromeRectangleDetector.cpp \
    $$PWD/zxing/common/detector/WhiteRectangleDetector.cpp \
    $$PWD/zxing/common/reedsolomon/GenericGF.cpp \
    $$PWD/zxing/common/reedsolomon/GenericGFPoly.cpp \
    $$PWD/zxing/common/reedsolomon/ReedSolomonDecoder.cpp \
    $$PWD/zxing/common/reedsolomon/ReedSolomonEncoder.cpp \
    $$PWD/zxing/common/reedsolomon/ReedSolomonException.cpp \
    $$PWD/zxing/datamatrix/DataMatrixReader.cpp \
    $$PWD/zxing/datamatrix/DataMatrixVersion.cpp \
    $$PWD/zxing/datamatrix/decoder/DataMatrixBitMatrixParser.cpp \
    $$PWD/zxing/datamatrix/decoder/DataMatrixDataBlock.cpp \
    $$PWD/zxing/datamatrix/decoder/DataMatrixDecodedBitStreamParser.cpp \
    $$PWD/zxing/datamatrix/decoder/DataMatrixDecoder.cpp \
    $$PWD/zxing/datamatrix/detector/DataMatrixCornerPoint.cpp \
    $$PWD/zxing/datamatrix/detector/DataMatrixDetector.cpp \
    $$PWD/zxing/datamatrix/detector/DataMatrixDetectorException.cpp \
    $$PWD/zxing/multi/ByQuadrantReader.cpp \
    $$PWD/zxing/multi/GenericMultipleBarcodeReader.cpp \
    $$PWD/zxing/multi/MultipleBarcodeReader.cpp \
    $$PWD/zxing/multi/qrcode/QRCodeMultiReader.cpp \
    $$PWD/zxing/multi/qrcode/detector/MultiDetector.cpp \
    $$PWD/zxing/multi/qrcode/detector/MultiFinderPatternFinder.cpp \
#    $$PWD/zxing/oned/CodaBarReader.cpp \
#    $$PWD/zxing/oned/Code128Reader.cpp \
#    $$PWD/zxing/oned/Code39Reader.cpp \
#    $$PWD/zxing/oned/Code93Reader.cpp \
#    $$PWD/zxing/oned/EAN13Reader.cpp \
#    $$PWD/zxing/oned/EAN8Reader.cpp \
#    $$PWD/zxing/oned/EANManufacturerOrgSupport.cpp \
#    $$PWD/zxing/oned/ITFReader.cpp \
#    $$PWD/zxing/oned/MultiFormatOneDReader.cpp \
#    $$PWD/zxing/oned/MultiFormatUPCEANReader.cpp \
#    $$PWD/zxing/oned/OneDReader.cpp \
#    $$PWD/zxing/oned/OneDResultPoint.cpp \
#    $$PWD/zxing/oned/UPCAReader.cpp \
#    $$PWD/zxing/oned/UPCEANExtension2Support.cpp \
#    $$PWD/zxing/oned/UPCEANExtension5Support.cpp \
#    $$PWD/zxing/oned/UPCEANExtensionSupport.cpp \
#    $$PWD/zxing/oned/UPCEANReader.cpp \
#    $$PWD/zxing/oned/UPCEReader.cpp \
#    $$PWD/zxing/oned/rss/AbstractRSSReader.cpp \
#    $$PWD/zxing/oned/rss/DataCharacter.cpp \
#    $$PWD/zxing/oned/rss/FinderPattern.cpp \
#    $$PWD/zxing/oned/rss/Pair.cpp \
#    $$PWD/zxing/oned/rss/RSS14Reader.cpp \
#    $$PWD/zxing/oned/rss/RSSUtils.cpp \
#    $$PWD/zxing/oned/rss/expanded/BitArrayBuilder.cpp \
#    $$PWD/zxing/oned/rss/expanded/ExpandedPair.cpp \
#    $$PWD/zxing/oned/rss/expanded/ExpandedRow.cpp \
#    $$PWD/zxing/oned/rss/expanded/RSSExpandedReader.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI013103decoder.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI01320xDecoder.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI01392xDecoder.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI01393xDecoder.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI013x0xDecoder.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI01decoder.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/AI01weightDecoder.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/AnyAIDecoder.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/BlockParsedResult.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/CurrentParsingState.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/DecodedChar.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/DecodedInformation.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/DecodedNumeric.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/DecodedObject.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/FieldParser.cpp \
#    $$PWD/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder.cpp \
#    $$PWD/zxing/pdf417/PDF417Reader.cpp \
#    $$PWD/zxing/pdf417/decoder/PDF417BitMatrixParser.cpp \
#    $$PWD/zxing/pdf417/decoder/PDF417DecodedBitStreamParser.cpp \
#    $$PWD/zxing/pdf417/decoder/PDF417Decoder.cpp \
#    $$PWD/zxing/pdf417/decoder/ec/ErrorCorrection.cpp \
#    $$PWD/zxing/pdf417/decoder/ec/ModulusGF.cpp \
#    $$PWD/zxing/pdf417/decoder/ec/ModulusPoly.cpp \
#    $$PWD/zxing/pdf417/detector/LinesSampler.cpp \
#    $$PWD/zxing/pdf417/detector/PDF417Detector.cpp \
    $$PWD/zxing/qrcode/QRCodeReader.cpp \
    $$PWD/zxing/qrcode/QRErrorCorrectionLevel.cpp \
    $$PWD/zxing/qrcode/QRFormatInformation.cpp \
    $$PWD/zxing/qrcode/QRVersion.cpp \
    $$PWD/zxing/qrcode/decoder/QRBitMatrixParser.cpp \
    $$PWD/zxing/qrcode/decoder/QRDataBlock.cpp \
    $$PWD/zxing/qrcode/decoder/QRDataMask.cpp \
    $$PWD/zxing/qrcode/decoder/QRDecodedBitStreamParser.cpp \
    $$PWD/zxing/qrcode/decoder/QRDecoder.cpp \
    $$PWD/zxing/qrcode/decoder/QRMode.cpp \
    $$PWD/zxing/qrcode/detector/QRAlignmentPattern.cpp \
    $$PWD/zxing/qrcode/detector/QRAlignmentPatternFinder.cpp \
    $$PWD/zxing/qrcode/detector/QRDetector.cpp \
    $$PWD/zxing/qrcode/detector/QRFinderPattern.cpp \
    $$PWD/zxing/qrcode/detector/QRFinderPatternFinder.cpp \
    $$PWD/zxing/qrcode/detector/QRFinderPatternInfo.cpp \
    $$PWD/zxing/qrcode/encoder/ByteMatrix.cpp \
    $$PWD/zxing/qrcode/encoder/MaskUtil.cpp \
    $$PWD/zxing/qrcode/encoder/MatrixUtil.cpp \
    $$PWD/zxing/qrcode/encoder/QRCode.cpp \
    $$PWD/zxing/qrcode/encoder/QREncoder.cpp

win32-msvc* {
    HEADERS += \
        $$PWD/win32/zxing/iconv.h \
        $$PWD/win32/zxing/msvc/stdint.h

    SOURCES += \
        $$PWD/zxing/win32/zxing/win_iconv.c
}

win32-g++ {
    HEADERS += \
        $$PWD/win32/zxing/iconv.h

    SOURCES += \
        $$PWD/zxing/win32/zxing/win_iconv.c
}

!win32{
    DEFINES += NO_ICONV
}
winrt {
    DEFINES += NO_ICONV
}
