.class final Lorg/antivirus/wipe/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/wipe/w;


# direct methods
.method constructor <init>(Lorg/antivirus/wipe/w;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/x;->a:Lorg/antivirus/wipe/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/wipe/x;->a:Lorg/antivirus/wipe/w;

    iget-object v0, v0, Lorg/antivirus/wipe/w;->a:Lorg/antivirus/wipe/WipeByApp;

    iget-object v0, v0, Lorg/antivirus/wipe/WipeByApp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/antivirus/wipe/x;->a:Lorg/antivirus/wipe/w;

    iget-object v0, v0, Lorg/antivirus/wipe/w;->a:Lorg/antivirus/wipe/WipeByApp;

    iget-object v0, v0, Lorg/antivirus/wipe/WipeByApp;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/antivirus/wipe/x;->a:Lorg/antivirus/wipe/w;

    iget-object v2, v2, Lorg/antivirus/wipe/w;->a:Lorg/antivirus/wipe/WipeByApp;

    iget-object v2, v2, Lorg/antivirus/wipe/WipeByApp;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/antivirus/wipe/WipeByApp;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/antivirus/wipe/x;->a:Lorg/antivirus/wipe/w;

    iget-object v2, v2, Lorg/antivirus/wipe/w;->a:Lorg/antivirus/wipe/WipeByApp;

    iget-object v2, v2, Lorg/antivirus/wipe/WipeByApp;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/antivirus/wipe/WipeByApp;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/antivirus/wipe/x;->a:Lorg/antivirus/wipe/w;

    iget-object v2, v2, Lorg/antivirus/wipe/w;->a:Lorg/antivirus/wipe/WipeByApp;

    iget-object v2, v2, Lorg/antivirus/wipe/WipeByApp;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-void
.end method
