.class Lcom/htc/camera/viewfinder/GLViewFinder$19;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$19;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$19;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsWaitingForFirstPreviewFrame:Z
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$3902(Lcom/htc/camera/viewfinder/GLViewFinder;Z)Z

    .line 1230
    return-void
.end method