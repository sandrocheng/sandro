.class final Lorg/antivirus/wipe/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lorg/antivirus/wipe/WipeByApp;


# direct methods
.method constructor <init>(Lorg/antivirus/wipe/WipeByApp;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/w;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/wipe/w;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->d(Lorg/antivirus/wipe/WipeByApp;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/antivirus/wipe/w;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->e(Lorg/antivirus/wipe/WipeByApp;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/wipe/w;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-virtual {v0}, Lorg/antivirus/wipe/WipeByApp;->d()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/antivirus/wipe/x;

    invoke-direct {v1, p0}, Lorg/antivirus/wipe/x;-><init>(Lorg/antivirus/wipe/w;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/wipe/w;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->e(Lorg/antivirus/wipe/WipeByApp;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/wipe/w;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-virtual {v0}, Lorg/antivirus/wipe/WipeByApp;->c()V

    :cond_1
    iget-object v0, p0, Lorg/antivirus/wipe/w;->a:Lorg/antivirus/wipe/WipeByApp;

    iget-object v0, v0, Lorg/antivirus/wipe/WipeByApp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/antivirus/wipe/w;->a:Lorg/antivirus/wipe/WipeByApp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/antivirus/wipe/WipeByApp;->a(Lorg/antivirus/wipe/WipeByApp;Z)Z

    goto :goto_0
.end method
