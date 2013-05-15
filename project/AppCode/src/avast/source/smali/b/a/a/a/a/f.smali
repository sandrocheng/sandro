.class public final Lb/a/a/a/a/f;
.super Ljava/lang/Object;
.source "MIME.java"


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lb/a/a/a/a/f;->a:Ljava/nio/charset/Charset;

    return-void
.end method
