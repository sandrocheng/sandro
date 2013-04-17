.class public Lcom/tencent/tmsecure/module/aresengine/ContactEntity;
.super Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;


# instance fields
.field public enableForCalling:Z

.field public enableForSMS:Z

.field public isSimContact:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/aresengine/ContactEntity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;-><init>(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V

    iget-boolean v0, p1, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->isSimContact:Z

    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->isSimContact:Z

    iget-boolean v0, p1, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->enableForCalling:Z

    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->enableForCalling:Z

    iget-boolean v0, p1, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->enableForSMS:Z

    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->enableForSMS:Z

    return-void
.end method
