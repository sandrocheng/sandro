.class final Lbvc;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lbuo$c;

.field private final synthetic b:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;


# direct methods
.method constructor <init>(Lbuo$c;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V
    .locals 0

    iput-object p1, p0, Lbvc;->a:Lbuo$c;

    iput-object p2, p0, Lbvc;->b:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lbvc;->a:Lbuo$c;

    iget-object v2, p0, Lbvc;->b:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-virtual {v1, v2, v0}, Lbuo$c;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lbvc;->a:Lbuo$c;

    iget-object v3, p0, Lbvc;->b:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-static {v2, v1, v3, v0}, Lbuo$c;->a(Lbuo$c;Ljava/util/List;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Ljava/util/ArrayList;)V

    return-void
.end method
