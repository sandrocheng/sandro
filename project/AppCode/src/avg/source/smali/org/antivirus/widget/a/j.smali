.class public final Lorg/antivirus/widget/a/j;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/widget/a/j;->a:Ljava/util/List;

    iget-object v0, p0, Lorg/antivirus/widget/a/j;->a:Ljava/util/List;

    sget-object v1, Lorg/antivirus/widget/a/i;->a:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/widget/a/j;->a:Ljava/util/List;

    sget-object v1, Lorg/antivirus/widget/a/i;->c:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lorg/antivirus/widget/a/j;->a:Ljava/util/List;

    sget-object v1, Lorg/antivirus/widget/a/i;->d:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/antivirus/widget/a/j;->a:Ljava/util/List;

    sget-object v1, Lorg/antivirus/widget/a/i;->b:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/widget/a/j;->a:Ljava/util/List;

    sget-object v1, Lorg/antivirus/widget/a/i;->f:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
