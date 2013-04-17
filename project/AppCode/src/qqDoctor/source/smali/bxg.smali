.class public final Lbxg;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;

.field private final synthetic b:Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)V
    .locals 0

    iput-object p1, p0, Lbxg;->a:Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;

    iput-object p2, p0, Lbxg;->b:Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbxg;->a:Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;

    iget-object v1, p0, Lbxg;->b:Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;->onHandleAslynRequest(Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
