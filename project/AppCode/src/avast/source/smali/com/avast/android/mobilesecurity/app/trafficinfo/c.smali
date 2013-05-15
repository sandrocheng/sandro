.class public Lcom/avast/android/mobilesecurity/app/trafficinfo/c;
.super Ljava/lang/Object;
.source "NetworkOverview.java"


# instance fields
.field public a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

.field public b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

.field public c:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    .line 13
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    .line 14
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/f;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    .line 15
    iput v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->d:I

    .line 18
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    .line 19
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    .line 20
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/f;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    .line 21
    iput v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->d:I

    .line 22
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->d:I

    packed-switch v0, :pswitch_data_0

    .line 52
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 41
    :pswitch_0
    const-string v0, "BLUETOOTH"

    goto :goto_0

    .line 42
    :pswitch_1
    const-string v0, "DUMMY"

    goto :goto_0

    .line 43
    :pswitch_2
    const-string v0, "ETHERNET"

    goto :goto_0

    .line 44
    :pswitch_3
    const-string v0, "MOBILE"

    goto :goto_0

    .line 45
    :pswitch_4
    const-string v0, "MOBILE_DUN"

    goto :goto_0

    .line 46
    :pswitch_5
    const-string v0, "MOBILE_HIPRI"

    goto :goto_0

    .line 47
    :pswitch_6
    const-string v0, "MOBILE_MMS"

    goto :goto_0

    .line 48
    :pswitch_7
    const-string v0, "MOBILE_SUPL"

    goto :goto_0

    .line 49
    :pswitch_8
    const-string v0, "WIFI"

    goto :goto_0

    .line 50
    :pswitch_9
    const-string v0, "WIMAX"

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roaming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", internal type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
