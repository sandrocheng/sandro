.class public final Lar;
.super Ljava/lang/Object;

# interfaces
.implements Las;


# instance fields
.field private a:Landroid/telephony/SmsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lar;->a:Landroid/telephony/SmsManager;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lao;->a()Lao;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lao;->a(I)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lar;->a:Landroid/telephony/SmsManager;

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    move v0, v6

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
