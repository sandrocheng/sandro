.class final Lot;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

.field private synthetic c:Los;


# direct methods
.method constructor <init>(Los;Ljava/util/List;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V
    .locals 0

    iput-object p1, p0, Lot;->c:Los;

    iput-object p2, p0, Lot;->a:Ljava/util/List;

    iput-object p3, p0, Lot;->b:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lot;->c:Los;

    iget-object v0, v0, Los;->a:Lop;

    invoke-static {v0}, Lop;->k(Lop;)Ljp;

    move-result-object v0

    iget-object v1, p0, Lot;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljp;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lot;->b:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-virtual {v0, v1, v2}, Lov;->a(ILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
