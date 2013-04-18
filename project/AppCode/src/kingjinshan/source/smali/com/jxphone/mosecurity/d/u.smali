.class public abstract Lcom/jxphone/mosecurity/d/u;
.super Ljava/lang/Object;
.source "SmsHelper.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x3

    sput v0, Lcom/jxphone/mosecurity/d/u;->a:I

    .line 20
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/jxphone/mosecurity/d/u;->a:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    const-string v0, "SmsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unavailable SDK Level value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Lcom/jxphone/mosecurity/c/l;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/jxphone/mosecurity/c/l;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/c/l;-><init>()V

    .line 32
    invoke-virtual {v0, p0}, Lcom/jxphone/mosecurity/c/l;->a(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p1}, Lcom/jxphone/mosecurity/c/l;->b(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jxphone/mosecurity/c/l;->a(J)V

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/l;->b(I)V

    .line 36
    return-object v0
.end method

.method public static final a()Lcom/jxphone/mosecurity/d/u;
    .locals 2

    .prologue
    .line 27
    sget v0, Lcom/jxphone/mosecurity/d/u;->a:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/jxphone/mosecurity/d/w;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/d/w;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/jxphone/mosecurity/d/v;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/d/v;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x800

    const/4 v3, 0x0

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sms_send_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-string v2, "sms_delivered_action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    const-string v2, "_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    const-string v2, "isDummy"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    const-string v2, "_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    const-string v2, "isDummy"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 48
    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 49
    invoke-virtual {p0, p3, p4, v0, v1}, Lcom/jxphone/mosecurity/d/u;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 50
    return-void
.end method

.method abstract a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method public abstract a([Ljava/lang/Object;)[Lcom/jxphone/mosecurity/c/l;
.end method
