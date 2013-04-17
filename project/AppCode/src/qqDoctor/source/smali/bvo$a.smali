.class final Lbvo$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbvo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/telephony/gsm/SmsMessage;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbvo$a;->a:Landroid/telephony/gsm/SmsMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbvo$a;->a:Landroid/telephony/gsm/SmsMessage;

    invoke-virtual {v0}, Landroid/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a([B)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v0

    iput-object v0, p0, Lbvo$a;->a:Landroid/telephony/gsm/SmsMessage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lbvo$a;->a:Landroid/telephony/gsm/SmsMessage;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbvo$a;->a:Landroid/telephony/gsm/SmsMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbvo$a;->a:Landroid/telephony/gsm/SmsMessage;

    invoke-virtual {v0}, Landroid/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
