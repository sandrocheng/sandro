.class final Lcom/avast/android/mobilesecurity/app/webshield/k;
.super Ljava/lang/Object;
.source "WebshieldService.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/avast/android/mobilesecurity/engine/ah;)I
    .locals 3
    .parameter

    .prologue
    .line 1073
    const/4 v0, 0x0

    .line 1074
    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/l;->a:[I

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/ak;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1086
    :goto_0
    return v0

    .line 1076
    :pswitch_0
    const/4 v0, 0x1

    .line 1078
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 1080
    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    .line 1082
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 1084
    :pswitch_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1074
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/avast/android/mobilesecurity/engine/ah;Lcom/avast/android/mobilesecurity/engine/ah;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1057
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/webshield/k;->a(Lcom/avast/android/mobilesecurity/engine/ah;)I

    move-result v0

    .line 1058
    invoke-direct {p0, p2}, Lcom/avast/android/mobilesecurity/app/webshield/k;->a(Lcom/avast/android/mobilesecurity/engine/ah;)I

    move-result v1

    .line 1060
    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1053
    check-cast p1, Lcom/avast/android/mobilesecurity/engine/ah;

    check-cast p2, Lcom/avast/android/mobilesecurity/engine/ah;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/webshield/k;->a(Lcom/avast/android/mobilesecurity/engine/ah;Lcom/avast/android/mobilesecurity/engine/ah;)I

    move-result v0

    return v0
.end method
