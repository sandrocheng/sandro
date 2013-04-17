.class final Lbun;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lbum;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbum;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbun;->a:Lbum;

    iput-object p2, p0, Lbun;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;-><init>()V

    iget-object v0, p0, Lbun;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbun;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, v1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    iget-object v0, p0, Lbun;->a:Lbum;

    invoke-static {v0}, Lbum;->a(Lbum;)Lbuj$b;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lbuj$b;->notifyDataReached(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
