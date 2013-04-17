.class public Lcom/google/android/mms/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"


# static fields
.field public static final APP_SMIL:Ljava/lang/String; = "application/smil"

.field public static final MMS_MESSAGE:Ljava/lang/String; = "application/vnd.wap.mms-message"

.field public static final TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAudioType(Ljava/lang/String;)Z
    .locals 1
    .parameter "contentType"

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public static isImageType(Ljava/lang/String;)Z
    .locals 1
    .parameter "contentType"

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public static isVideoType(Ljava/lang/String;)Z
    .locals 1
    .parameter "contentType"

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method
