.class public final Lorg/antivirus/license/qrreader/result/TextResultHandler;
.super Lorg/antivirus/license/qrreader/result/ResultHandler;


# static fields
.field private static final buttons:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/antivirus/license/qrreader/result/TextResultHandler;->buttons:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/antivirus/license/qrreader/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    return-void
.end method


# virtual methods
.method public final getButtonCount()I
    .locals 1

    invoke-virtual {p0}, Lorg/antivirus/license/qrreader/result/TextResultHandler;->hasCustomProductSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/antivirus/license/qrreader/result/TextResultHandler;->buttons:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/antivirus/license/qrreader/result/TextResultHandler;->buttons:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final getButtonText(I)I
    .locals 1

    sget-object v0, Lorg/antivirus/license/qrreader/result/TextResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getDisplayTitle()I
    .locals 1

    const v0, 0x7f09013d

    return v0
.end method

.method public final handleButtonPress(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/antivirus/license/qrreader/result/TextResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/antivirus/license/qrreader/result/TextResultHandler;->webSearch(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/antivirus/license/qrreader/result/TextResultHandler;->shareByEmail(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0}, Lorg/antivirus/license/qrreader/result/TextResultHandler;->shareBySMS(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v0}, Lorg/antivirus/license/qrreader/result/TextResultHandler;->fillInCustomSearchURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antivirus/license/qrreader/result/TextResultHandler;->openURL(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
