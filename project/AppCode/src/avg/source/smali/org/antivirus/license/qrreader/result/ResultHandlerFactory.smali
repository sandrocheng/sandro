.class public final Lorg/antivirus/license/qrreader/result/ResultHandlerFactory;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeResultHandler(Lorg/antivirus/license/qrreader/general/CaptureActivity;Lcom/google/zxing/Result;)Lorg/antivirus/license/qrreader/result/ResultHandler;
    .locals 2

    invoke-static {p1}, Lorg/antivirus/license/qrreader/result/ResultHandlerFactory;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    new-instance v1, Lorg/antivirus/license/qrreader/result/TextResultHandler;

    invoke-direct {v1, p0, v0, p1}, Lorg/antivirus/license/qrreader/result/TextResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    return-object v1
.end method

.method private static parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    invoke-static {p0}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    return-object v0
.end method
