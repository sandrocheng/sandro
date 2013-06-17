.class public abstract Lcom/avg/toolkit/b/g;
.super Ljava/lang/Object;


# instance fields
.field public f:[Ljava/lang/Object;

.field public g:Ljava/util/HashMap;

.field protected h:Lcom/avg/toolkit/e/a;

.field public i:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/avg/toolkit/b/g;->f:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/avg/toolkit/b/g;->g:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/avg/toolkit/b/g;->h:Lcom/avg/toolkit/e/a;

    iput-object v0, p0, Lcom/avg/toolkit/b/g;->i:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/avg/toolkit/b/e;
.end method

.method public abstract a(Landroid/content/Context;)Z
.end method

.method public abstract a(Landroid/content/Context;Landroid/os/Message;)Z
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/Object;)Z
.end method

.method public abstract b(Landroid/content/Context;)Z
.end method

.method public b(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract b_()I
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public c(Lcom/avg/toolkit/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/toolkit/b/g;->h:Lcom/avg/toolkit/e/a;

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/toolkit/b/g;->f:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/avg/toolkit/b/g;->g:Ljava/util/HashMap;

    return-void
.end method
