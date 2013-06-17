.class public Lcom/avg/tuneup/a/b;
.super Lcom/avg/tuneup/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lcom/avg/tuneup/a/c;

    invoke-direct {v0}, Lcom/avg/tuneup/a/c;-><init>()V

    sget v1, Lcom/avg/a/e;->middle_part:I

    const-string v2, "Performance"

    invoke-virtual {p0, v0, v1, v2}, Lcom/avg/tuneup/a/b;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
