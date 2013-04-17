.class final Lbya;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;)V
    .locals 0

    iput-object p1, p0, Lbya;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbya;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    const/4 v0, 0x1

    sput-boolean v0, Lbxw;->b:Z

    return-void
.end method
