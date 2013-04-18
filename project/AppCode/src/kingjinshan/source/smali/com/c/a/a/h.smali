.class public final Lcom/c/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/c/a/a/ag;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/c/a/a/ag;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1227
    iput-object v0, p0, Lcom/c/a/a/h;->a:Lcom/c/a/a/ag;

    .line 1228
    iput-object v0, p0, Lcom/c/a/a/h;->b:Ljava/lang/String;

    .line 1231
    iput-object p1, p0, Lcom/c/a/a/h;->a:Lcom/c/a/a/ag;

    .line 1232
    iput-object p2, p0, Lcom/c/a/a/h;->b:Ljava/lang/String;

    .line 1233
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 14
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
