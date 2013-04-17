.class public final Lic;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lib;


# direct methods
.method public constructor <init>(Lib;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lic;->b:Lib;

    iput-object p2, p0, Lic;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lic;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget-object v3, p0, Lic;->b:Lib;

    invoke-static {v2, v0}, Lib;->a(Landroid/content/ContentValues;Llj;)Landroid/content/ContentValues;

    iget-object v0, p0, Lic;->b:Lib;

    iget-object v0, v0, Lib;->a:Lhx;

    const-string v3, "file_safe_file_info"

    invoke-virtual {v0, v3, v2}, Lhx;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_0
    return-void
.end method
