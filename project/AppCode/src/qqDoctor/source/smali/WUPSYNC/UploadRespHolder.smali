.class public final LWUPSYNC/UploadRespHolder;
.super Ljava/lang/Object;


# instance fields
.field public value:LWUPSYNC/UploadResp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LWUPSYNC/UploadResp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWUPSYNC/UploadRespHolder;->value:LWUPSYNC/UploadResp;

    return-void
.end method
