.class final Lbmi;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldv",
        "<",
        "Lkw;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lbmh;


# direct methods
.method constructor <init>(Lbmh;)V
    .locals 0

    iput-object p1, p0, Lbmi;->a:Lbmh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x0

    check-cast p1, Lkw;

    iget-object v0, p0, Lbmi;->a:Lbmh;

    invoke-static {v0}, Lbmh;->a(Lbmh;)Lij;

    move-result-object v0

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lij;->b:Lhs;

    iget-object v4, v0, Lij;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pkgName=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lij;->b:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    new-instance v0, Lkd;

    invoke-direct {v0}, Lkd;-><init>()V

    iget-object v2, v0, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v3, "update_app_count"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "update_app_count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lbmi;->a:Lbmh;

    invoke-static {v0}, Lbmh;->b(Lbmh;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6723

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
