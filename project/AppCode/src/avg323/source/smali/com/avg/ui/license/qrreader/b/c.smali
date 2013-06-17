.class public final Lcom/avg/ui/license/qrreader/b/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/avg/ui/license/qrreader/general/CaptureActivity;Lcom/google/zxing/Result;)Lcom/avg/ui/license/qrreader/b/a;
    .locals 2

    invoke-static {p1}, Lcom/avg/ui/license/qrreader/b/c;->a(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    new-instance v1, Lcom/avg/ui/license/qrreader/b/d;

    invoke-direct {v1, p0, v0, p1}, Lcom/avg/ui/license/qrreader/b/d;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    return-object v1
.end method

.method private static a(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    invoke-static {p0}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    return-object v0
.end method
