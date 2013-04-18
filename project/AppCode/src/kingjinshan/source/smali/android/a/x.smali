.class public final Landroid/a/x;
.super Ljava/lang/Object;
.source "Telephony.java"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final f:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final g:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"

.field public static final h:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final i:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 583
    const-string v0, "pdus"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 584
    array-length v0, p0

    new-array v1, v0, [[B

    move v2, v4

    .line 586
    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_0

    .line 587
    aget-object v0, p0, v2

    check-cast v0, [B

    aput-object v0, v1, v2

    .line 586
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 589
    :cond_0
    array-length v0, v1

    new-array v0, v0, [[B

    .line 590
    array-length v2, v0

    .line 591
    new-array v3, v2, [Landroid/telephony/SmsMessage;

    .line 592
    :goto_1
    if-ge v4, v2, :cond_1

    .line 593
    aget-object v5, v1, v4

    aput-object v5, v0, v4

    .line 594
    aget-object v5, v0, v4

    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v5

    aput-object v5, v3, v4

    .line 592
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 596
    :cond_1
    return-object v3
.end method
