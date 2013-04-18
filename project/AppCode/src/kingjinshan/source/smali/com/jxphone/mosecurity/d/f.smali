.class public final Lcom/jxphone/mosecurity/d/f;
.super Ljava/lang/Object;
.source "DataTemp.java"


# static fields
.field public static volatile a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    sput-object p0, Lcom/jxphone/mosecurity/d/f;->b:Ljava/lang/String;

    .line 14
    sput-object p1, Lcom/jxphone/mosecurity/d/f;->c:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 18
    sget-object v0, Lcom/jxphone/mosecurity/d/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jxphone/mosecurity/d/f;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 24
    :goto_0
    return v0

    .line 21
    :cond_1
    sget-object v0, Lcom/jxphone/mosecurity/d/f;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jxphone/mosecurity/d/f;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 24
    goto :goto_0
.end method
