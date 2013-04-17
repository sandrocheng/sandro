.class public final LWUPSYNC/BackupGroupReqHolder;
.super Ljava/lang/Object;


# instance fields
.field public value:LWUPSYNC/BackupGroupReq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LWUPSYNC/BackupGroupReq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWUPSYNC/BackupGroupReqHolder;->value:LWUPSYNC/BackupGroupReq;

    return-void
.end method
