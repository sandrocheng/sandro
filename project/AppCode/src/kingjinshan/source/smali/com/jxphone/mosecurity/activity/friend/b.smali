.class final Lcom/jxphone/mosecurity/activity/friend/b;
.super Lcom/jxphone/mosecurity/c/b;
.source "CheckedContact.java"


# static fields
.field private static final c:J = 0x1L


# instance fields
.field a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/jxphone/mosecurity/c/b;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/b;->a:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/jxphone/mosecurity/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/jxphone/mosecurity/c/b;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/b;->a:Z

    .line 16
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/b;->a(I)V

    .line 17
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/b;->a(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/b;->b(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/b;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 20
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->f()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jxphone/mosecurity/activity/friend/b;->a(J)V

    .line 21
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->h()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jxphone/mosecurity/activity/friend/b;->b(J)V

    .line 22
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/b;->a(Landroid/graphics/Bitmap;)V

    .line 23
    return-void
.end method
