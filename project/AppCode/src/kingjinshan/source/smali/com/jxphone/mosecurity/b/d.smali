.class public final Lcom/jxphone/mosecurity/b/d;
.super Lcom/jxphone/mosecurity/b/a/b;
.source "PhoneCallIterator.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/b/a/b;-><init>(Landroid/database/Cursor;)V

    .line 15
    return-void
.end method

.method private a()Lcom/jxphone/mosecurity/c/j;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jxphone/mosecurity/b/d;->a:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/jxphone/mosecurity/c/j;->a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/jxphone/mosecurity/b/d;->a:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/jxphone/mosecurity/c/j;->a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    return-object v0
.end method
