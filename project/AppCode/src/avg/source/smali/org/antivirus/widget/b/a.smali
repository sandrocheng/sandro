.class public final Lorg/antivirus/widget/b/a;
.super Landroid/database/ContentObserver;


# instance fields
.field private a:Ljava/text/DateFormat;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lorg/antivirus/widget/b/a;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/widget/b/a;->a:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lorg/antivirus/widget/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/widget/b/a;->a:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/antivirus/widget/b/a;->a:Ljava/text/DateFormat;

    iget-object v0, p0, Lorg/antivirus/widget/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/widget/a/k;->d()Z

    iget-object v0, p0, Lorg/antivirus/widget/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/widget/a/k;->c()Z

    :cond_0
    return-void
.end method
