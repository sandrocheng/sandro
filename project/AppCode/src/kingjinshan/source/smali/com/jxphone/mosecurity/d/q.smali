.class final Lcom/jxphone/mosecurity/d/q;
.super Ljava/lang/Object;
.source "SDCardUtils.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    const-string v0, ".+\\.(jpg|JPG|jpeg|JPEG|3gp|3GP)$"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
