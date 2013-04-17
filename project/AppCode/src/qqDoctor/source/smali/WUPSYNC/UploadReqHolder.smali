.class public final LWUPSYNC/UploadReqHolder;
.super Ljava/lang/Object;


# instance fields
.field public value:LWUPSYNC/UploadReq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LWUPSYNC/UploadReq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWUPSYNC/UploadReqHolder;->value:LWUPSYNC/UploadReq;

    return-void
.end method
