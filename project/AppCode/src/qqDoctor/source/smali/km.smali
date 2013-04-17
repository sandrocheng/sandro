.class public final Lkm;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/SharedPreferences$Editor;

.field public b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkm;->c:Landroid/content/Context;

    iget-object v0, p0, Lkm;->c:Landroid/content/Context;

    const-string v1, "VirusScanConfigDao"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lkm;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lkm;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lkm;->a:Landroid/content/SharedPreferences$Editor;

    return-void
.end method
