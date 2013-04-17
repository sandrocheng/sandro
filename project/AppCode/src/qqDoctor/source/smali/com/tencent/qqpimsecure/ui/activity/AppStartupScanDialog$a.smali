.class public final Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lok;


# direct methods
.method public constructor <init>(Lok;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    iget-object v0, v0, Lok;->i:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    iget-object v0, v0, Lok;->f:Lkf;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    iget-object v1, v1, Lok;->i:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "pkg_name"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "setting_flag"

    iget v3, v0, Lkf;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, v0, Lkf;->a:Lhs;

    const-string v3, "startup_app_scan"

    invoke-virtual {v1, v3, v2}, Lhs;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, v0, Lkf;->a:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    :cond_0
    return-void
.end method
